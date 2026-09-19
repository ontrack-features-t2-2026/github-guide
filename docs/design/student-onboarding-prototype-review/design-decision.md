# Design decision - First-Time Tutorial

**Ticket:** TUT-UX01
**Status:** Recommended direction, pending review approval

This document compares the three design options in the ticket, records the
recommended direction and explains the accessibility reasons behind it. It is the
"updated design decision" deliverable for item 14. The direction is confirmed
once the objective lead and the accessibility reviewer approve it after the
review sessions.

## What the tutorial has to do

From the [objective](../../../first-time-tutorial-objective.md) and the TUT-D04
draft [student guide](https://github.com/ontrack-features-t2-2026/github-guide/blob/docs/student-onboarding-user-and-contributor-guide/docs/student-onboarding/student-guide.md), the tutorial
introduces four existing OnTrack journeys without performing them for the student:

1. Select a unit.
2. Open the project or task dashboard.
3. Find and understand the target-grade control.
4. Find the Calendar area.

Each step points to a real part of OnTrack and may move to the relevant page so
the feature can be shown clearly. The page has to stay usable after the tutorial
closes, work with the keyboard and assistive technology, and never block OnTrack
when a unit, target or storage mechanism is unavailable.

## Options compared

### Option A - Anchored guided overlay with a visible step card

A short welcome panel offers the tutorial. When the student starts it, a light
overlay dims the page, a spotlight highlights the real control for the current
step, and a step card explains it and carries the controls. The student stays on
the real pages the whole time.

- **Strengths:** Shows the real interface, so the student learns where things
  actually are. Matches "points to a real part of OnTrack" and "may move to the
  relevant page." Leaves the page fully usable after exit. Reuses existing routes,
  so there is little new surface to maintain.
- **Risks:** Anchoring has to handle a target that is off screen, missing or slow
  to load. The overlay must not trap keyboard focus.

### Option B - Dedicated first-time checklist page with contextual highlights

A separate page lists the four journeys as a checklist. Selecting an item takes
the student to the feature and highlights it.

- **Strengths:** Simple to build and simple to explain. Easy to resume.
- **Risks:** It is a second surface that can drift from the real interface, and it
  reads like a separate settings or help page. It risks duplicating the shared
  Tutorial and Help location that MISC-X01 already defines, which the ticket puts
  out of scope.

### Option C - Short welcome flow followed by optional anchored steps

A welcome flow introduces the tutorial across one or two panels, and the anchored
steps are then optional.

- **Strengths:** Gentle introduction. Lets a student read first and point later.
- **Risks:** On its own it can become a slideshow that never shows the real
  interface if the student stops after the welcome.

## Recommended direction

**Option A, with the short welcome panel from Option C used only as the entry
point.** The student sees one welcome panel that offers the tutorial, and from
there every step is an anchored spotlight on the real control. This keeps the
teaching value of pointing at the real interface, reuses existing routes rather
than adding a second page, and stays inside the MISC-X01 shared help and
preferences structure.

The prototype in [prototype/index.html](prototype/index.html) implements this
direction so reviewers can try it.

The prototype deliberately looks like the current OnTrack dashboard rather than a
new visual style. It reuses the white toolbar, the three-bar logo, the solid
indigo current-unit pill, the two-pane task list and progress layout, the Material
indigo primary colour, the real task-status pill colours and the app's Grotesk and
Inter type pairing, so reviewers judge the tutorial over their own product and not
over an unfamiliar mock. The tutorial overlay is the only new surface, and it
follows the same look.

### Why not Option B or a pure Option C

Option B adds a second page that has to be kept in step with the real interface
and that reads like a settings area, which the cross-objective boundary rules out.
A pure Option C risks teaching nothing if the student stops after the welcome.
Using the welcome panel only as the entry into Option A takes the gentle start
without the slideshow risk.

## Controls in the recommended direction

The step card shows, and the prototype implements:

- **Back** and **Next** to move between steps.
- **Skip for now** to leave the automatic tutorial for this session.
- **Do not show automatically again** to turn off the automatic prompt for the
  current version. This is a saved preference, not a deletion of progress.
- **Finish** on the last step.
- **Close** at any time.
- A permanent **Tutorial and Help** entry to replay. Replay is an action that
  restarts the current version and does not clear a saved automatic-prompt choice,
  following the MISC-X01 default.

## Accessibility rationale

The direction is chosen partly because it can meet the objective accessibility
requirements. The details are in [keyboard-and-focus.md](keyboard-and-focus.md).
In summary:

- Every control has visible text or an accessible name.
- The step number and total are shown as text, for example "Step 2 of 4", and by a
  progress indicator, so understanding does not depend on colour alone.
- The highlighted target is described in words in the step card, so the highlight
  does not rely on colour alone.
- Keyboard users can move, leave and return without a focus trap. Escape closes the
  tutorial and returns focus to a sensible place.
- The current step and step count are announced through a polite live region.
- Motion is minimal and respects the reduced-motion preference.
- The page remains usable after the tutorial closes.

## Fallback and safety rules the direction has to keep

- If a target is off screen, missing or slow, the step card explains the feature
  in words and offers Next rather than blocking. See the missing-target state in
  [wireframes.md](wireframes.md).
- If the student has no current unit, a no-unit fallback explains the situation
  and never blocks normal OnTrack use.
- If progress cannot be saved because of a storage, network or API problem, the
  tutorial still runs and tells the student that progress may not be remembered.
- The tutorial never selects a unit, changes a target grade, subscribes to a
  calendar or submits a task. It never changes the existing profile setup or the
  meaning of `has_run_first_time_setup`.

## Approval

| Reviewer role | Name | Decision | Link or date |
|---|---|---|---|
| Objective lead | Unassigned | Pending | TBD |
| Accessibility reviewer | Unassigned | Pending | TBD |
| Documentation or UX reviewer | Unassigned | Pending | TBD |

The direction is not final until the objective lead and the accessibility
reviewer approve it. Accepted critical or high findings from the review are
applied to the prototype and this document before implementation starts under
TUT-W01.
