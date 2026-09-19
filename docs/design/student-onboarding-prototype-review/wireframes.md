# Wireframes - First-Time Tutorial

**Ticket:** TUT-UX01

These wireframes describe the welcome panel, the guided step, the skip
confirmation and the completion panel, on desktop and on a narrow screen. They
also describe the fallback states for a missing target, no current unit and a
storage failure. The clickable version is in [prototype/index.html](prototype/index.html).

The controls, copy and states follow the TUT-D04 draft [student guide](https://github.com/ontrack-features-t2-2026/github-guide/blob/docs/student-onboarding-user-and-contributor-guide/docs/student-onboarding/student-guide.md)
and the [design decision](design-decision.md). The layout is a sketch of
structure and content, not final visual design.

## Shared rules for every panel

- The step number and total are shown as text, for example "Step 2 of 4", next to a
  progress indicator. Colour is never the only signal.
- Every control has a visible label. Icon-only controls also carry an accessible
  name.
- The panel is a dialog with an accessible name that matches its heading.
- A single close control sits in a predictable place in every panel.

## 1. Welcome panel (desktop)

The welcome panel is centred over a dimmed page. It offers the tutorial and lets
the student decline without losing access to OnTrack.

```
+--------------------------------------------------------------+
|  OnTrack (dimmed page behind the panel)                      |
|                                                              |
|      +------------------------------------------------+      |
|      |  Welcome to OnTrack                        [x] |      |
|      |                                                |      |
|      |  A short, optional tour shows you four         |      |
|      |  things new students look for:                 |      |
|      |    - selecting a unit                          |      |
|      |    - the project or task dashboard             |      |
|      |    - the target-grade option                   |      |
|      |    - the Calendar area                          |     |
|      |                                                |      |
|      |  It only shows you where these are. It will    |      |
|      |  not change anything for you.                  |      |
|      |                                                |      |
|      |  [ Start the tour ]   [ Skip for now ]         |      |
|      |                                                |      |
|      |  [ ] Do not show this automatically again      |      |
|      +------------------------------------------------+      |
|                                                              |
+--------------------------------------------------------------+
```

## 2. Guided step (desktop)

The page stays visible. A light overlay dims everything except the real control
for this step, which is spotlighted. The step card explains the control and
carries the controls. The card is positioned near the target but moves if the
target is near an edge.

```
+--------------------------------------------------------------+
|  OnTrack top bar        [ Unit selector ]  <-- spotlight     |
|  ...................    +==============+   .................  |
|  dimmed                 |   Unit A  v  |   dimmed             |
|  ...................    +==============+   .................  |
|                                                              |
|                 +------------------------------------+       |
|                 |  Step 1 of 4   [####----------]    |       |
|                 |  Choose your unit                  |       |
|                 |                                    |       |
|                 |  This is the unit selector. Use it |       |
|                 |  to move between the units you are  |      |
|                 |  enrolled in.                      |       |
|                 |                                    |       |
|                 |  [ Back ]  [ Next ]   [ Skip for now ] [x] |
|                 +------------------------------------+       |
+--------------------------------------------------------------+
```

Notes:

- "Step 1 of 4" is text. The bar to its right is a second, non-colour signal.
- On step 1 the **Back** control is disabled and labelled as disabled.
- On step 4 **Next** becomes **Finish**.
- **Skip for now** and the close control are present on every step.

## 3. Skip confirmation

Choosing Skip for now opens a small confirmation so the student can tell the
difference between skipping for this session and turning the automatic prompt off.

```
      +------------------------------------------------+
      |  Leave the tour?                          [x]  |
      |                                                |
      |  You can leave now and OnTrack will keep       |
      |  working normally.                             |
      |                                                |
      |  [ ] Do not show this automatically again      |
      |                                                |
      |  [ Keep the tour ]        [ Leave the tour ]   |
      +------------------------------------------------+
```

Notes:

- Leaving without the checkbox is "skip for now" and the tour may be offered again
  later under the approved rules.
- Leaving with the checkbox ticked is "do not show automatically again", which
  turns off only the automatic prompt. Replay through Tutorial and Help still works.

## 4. Completion panel

Shown after the student selects Finish on step 4.

```
      +------------------------------------------------+
      |  You are ready to go                      [x]  |
      |                                                |
      |  You have seen how to find your unit, the      |
      |  dashboard, the target-grade option and the    |
      |  Calendar area.                                |
      |                                                |
      |  You can replay this any time from             |
      |  Tutorial and Help in the menu.                |
      |                                                |
      |  [ Close ]                                     |
      +------------------------------------------------+
```

After Finish, the current version does not appear automatically again.

## 5. Narrow screen

On a narrow screen the panels use the full width near the bottom of the screen so
they do not cover the spotlighted control, and the controls stack.

```
+--------------------------+        +--------------------------+
|  OnTrack (dimmed)        |        |  [ Unit selector ] <--   |
|                          |        |  ....... dimmed .......   |
|                          |        |                          |
|                          |        |                          |
|  +--------------------+  |        |  +--------------------+  |
|  | Welcome        [x] |  |        |  | Step 1 of 4        |  |
|  |                    |  |        |  | [####----]         |  |
|  | Short optional     |  |        |  | Choose your unit   |  |
|  | tour of four       |  |        |  |                    |  |
|  | things.            |  |        |  | This is the unit   |  |
|  |                    |  |        |  | selector...        |  |
|  | [ Start the tour ] |  |        |  | [ Next ]           |  |
|  | [ Skip for now ]   |  |        |  | [ Back ]           |  |
|  | [ ] Do not show    |  |        |  | [ Skip for now ]   |  |
|  +--------------------+  |        |  +--------------------+  |
+--------------------------+        +--------------------------+
      Welcome (narrow)                   Guided step (narrow)
```

## 6. Fallback - target off screen, missing or slow

If the real control for a step is off screen, not present or still loading, the
step does not block. The card scrolls the target into view when it can, and
otherwise explains the feature in words and keeps Next available.

```
      +------------------------------------------------+
      |  Step 3 of 4   [########------]           [x]  |
      |  Find your target grade                        |
      |                                                |
      |  We could not highlight the target-grade       |
      |  control on this screen. It is usually on the  |
      |  project or task page, where you can set the   |
      |  grade you are aiming for.                      |
      |                                                |
      |  [ Back ]  [ Next ]        [ Skip for now ]    |
      +------------------------------------------------+
```

## 7. Fallback - no current unit

If the student has no current unit, the tour explains the situation and does not
block OnTrack. It offers to continue with the parts that do not need a unit, or to
leave.

```
      +------------------------------------------------+
      |  We could not find a current unit         [x]  |
      |                                                |
      |  You may not be enrolled in a unit yet, or the |
      |  enrolment information may still be loading.    |
      |                                                |
      |  Check that you are signed in to the right      |
      |  account. You can keep using OnTrack normally. |
      |                                                |
      |  [ Continue anyway ]      [ Close ]            |
      +------------------------------------------------+
```

## 8. Fallback - progress cannot be saved

If a browser, storage, network or API problem stops the tour from saving its
progress, the tour still runs and tells the student that progress may not be
remembered. It never stops the student from using OnTrack.

```
      +------------------------------------------------+
      |  Your progress may not be saved           [x]  |
      |                                                |
      |  You can keep going through the tour, but it   |
      |  may not remember where you stopped. OnTrack   |
      |  keeps working normally.                        |
      |                                                |
      |  [ Continue ]                                  |
      +------------------------------------------------+
```

## Replay entry

Replay is not a panel. It is the permanent **Tutorial and Help** entry in the
approved student menu location defined in MISC-X01. Selecting it restarts the
current version from step 1 and does not clear a saved "do not show automatically
again" choice.
