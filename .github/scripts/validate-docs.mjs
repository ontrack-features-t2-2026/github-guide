import { execFileSync } from 'node:child_process';
import { readFile, stat } from 'node:fs/promises';
import path from 'node:path';

const repositoryRoot = process.cwd();
const markdownFiles = execFileSync('git', ['ls-files', '*.md'], {
  cwd: repositoryRoot,
  encoding: 'utf8',
})
  .trim()
  .split('\n')
  .filter(Boolean);

if (markdownFiles.length === 0) {
  throw new Error('No tracked Markdown files were found.');
}

const failures = [];
const linkPattern = /!?\[[^\]]*\]\(([^)]+)\)/g;

for (const file of markdownFiles) {
  const absoluteFile = path.resolve(repositoryRoot, file);
  const contents = await readFile(absoluteFile, 'utf8');

  if (contents.length === 0) {
    failures.push(`${file}: file is empty`);
  }
  if (!contents.endsWith('\n')) {
    failures.push(`${file}: file must end with a newline`);
  }
  if (/^(<{7}|={7}|>{7})(?:\s|$)/m.test(contents)) {
    failures.push(`${file}: unresolved merge-conflict marker`);
  }

  for (const [lineIndex, line] of contents.split('\n').entries()) {
    if (/[ \t]+$/.test(line)) {
      failures.push(`${file}:${lineIndex + 1}: trailing whitespace`);
    }
  }

  for (const match of contents.matchAll(linkPattern)) {
    let target = match[1].trim();

    if (target.startsWith('<')) {
      const closingBracket = target.indexOf('>');
      target = closingBracket === -1 ? target : target.slice(1, closingBracket);
    } else {
      target = target.split(/\s+["']/u, 1)[0];
    }

    if (
      target === '' ||
      target.startsWith('#') ||
      target.startsWith('//') ||
      /^[a-z][a-z0-9+.-]*:/iu.test(target)
    ) {
      continue;
    }

    const pathOnly = target.split(/[?#]/u, 1)[0];
    let decodedPath;
    try {
      decodedPath = decodeURIComponent(pathOnly);
    } catch {
      failures.push(`${file}: invalid URL encoding in local link ${target}`);
      continue;
    }

    const resolvedTarget = decodedPath.startsWith('/')
      ? path.resolve(repositoryRoot, decodedPath.slice(1))
      : path.resolve(path.dirname(absoluteFile), decodedPath);
    const relativeTarget = path.relative(repositoryRoot, resolvedTarget);

    if (relativeTarget.startsWith('..') || path.isAbsolute(relativeTarget)) {
      failures.push(`${file}: local link escapes the repository: ${target}`);
      continue;
    }

    try {
      await stat(resolvedTarget);
    } catch {
      failures.push(`${file}: local link target does not exist: ${target}`);
    }
  }
}

if (failures.length > 0) {
  console.error(failures.map((failure) => `- ${failure}`).join('\n'));
  process.exitCode = 1;
} else {
  console.log(`Validated ${markdownFiles.length} Markdown files.`);
}
