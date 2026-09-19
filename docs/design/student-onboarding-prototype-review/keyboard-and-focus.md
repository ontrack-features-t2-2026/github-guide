# Keyboard and focus design - First-Time Tutorial

**Ticket:** TUT-UX01 (checklist items 3 and 4)

This document defines the keyboard focus order, the initial focus, the Escape
behaviour and the focus return for the tutorial. It also records the roles, names
and the step announcement. The clickable prototype in
[prototype/index.html](prototype/index.html) follows these rules so reviewers can
test them.

## Dialog roles and names

- The welcome panel, the skip confirmation and the completion panel are modal
  dialogs. Each uses `role="dialog"`, `aria-modal="true"` and an `aria-labelledby`
  that points to its heading.
- The guided step card is a non-modal dialog anchored to the page. It uses
  `role="dialog"` with an accessible name from its heading. It does not trap focus,
  so the student can still reach the page behind it. This matches the objective
  requirement that keyboard users can move, exit and return without a focus trap.
- The overlay behind the step card is decorative and is hidden from assistive
  technology.

## Initial focus

- When the welcome panel opens, focus moves to the panel. The first focusable
  control is the heading container or the primary action, not the close control, so
  a screen reader hears the panel name and purpose first.
- When a guided step opens, focus moves to the step card heading, then the reading
  order flows through the explanation to the controls.
- When a confirmation or completion dialog opens, focus moves into that dialog.

## Focus order within a guided step

The step card follows a predictable reading and tab order:

1. Step heading, for example "Choose your unit".
2. Step position text, "Step 2 of 4".
3. The explanation text.
4. Back.
5. Next, which becomes Finish on the last step.
6. Skip for now.
7. Close.

Back is present but disabled on step 1, and it keeps a disabled name rather than
disappearing, so the control set does not shift between steps.

## Escape behaviour

- Escape from the welcome panel closes it and is treated as "skip for now" for this
  session.
- Escape from a guided step opens the skip confirmation rather than leaving
  silently, so the student does not lose their place by accident.
- Escape from the skip confirmation returns to the guided step.
- Escape from the completion panel closes the tutorial.

## Focus return

- Closing the tutorial from the welcome panel returns focus to the control that
  offered it, or to a safe default such as the main content start if that control
  is not present.
- Closing the tutorial from a guided step returns focus to the real control that
  the last step pointed to, so the student is left next to the feature they just
  learned about. If that control is not available, focus returns to the main
  content start.
- Opening the tutorial from Tutorial and Help returns focus, on close, to the
  Tutorial and Help entry.

## Step announcement

- A polite live region announces the step position and heading when a step opens,
  for example "Step 2 of 4, open the dashboard". Polite rather than assertive so it
  does not interrupt the student mid-action.
- The step position is also visible as text, so the announcement and the visible
  label agree and neither depends on colour.

## Not relying on colour

- The step position uses text and a progress indicator, not colour alone.
- The spotlighted target is named in the step card text, so a student who cannot
  see the highlight still knows which control the step is about.
- Disabled controls use the disabled state and a name, not only a lighter colour.

## Motion and reduced motion

- Movement between steps is small and short.
- When the operating system requests reduced motion, transitions are removed and
  the panels appear without animation. The prototype checks
  `prefers-reduced-motion`.

## Manual keyboard test checklist

Reviewers can run this quickly:

- [ ] Tab reaches every control in the order above.
- [ ] Back is disabled on step 1 and reachable and named on later steps.
- [ ] Enter or Space activates the focused control.
- [ ] Escape from a step opens the skip confirmation, not a silent exit.
- [ ] Focus returns to a sensible place after close, not to the top of the page by
      surprise.
- [ ] The step position is announced and is visible as text.
- [ ] Focus is never trapped inside the step card.
