---
name: release-notes
description: >-
  Publish updates to the TrackAbout login-page release notes / login ad (login-ad.md). Use when the
  user wants to change or promote the release notes — every action opens a GitHub pull request
  (Staging/draft, ClientTest/test, or Production/master); the skill never merges or approves.
  Handles all Git and GitHub steps for non-technical editors.
---

# Publish the TrackAbout login-page release notes

This skill helps the documentation team publish updates to the login-page release notes. The copy lives in
`login-ad.md` and is promoted through three branches. **You** (the assistant) do all the Git and
GitHub work; the editor only chooses an action and points you at their edited file. Speak in plain,
non-technical language and explain each step as you do it.

## Golden rules (do not break these)

1. **Every action ends in a pull request.** Never commit directly to `draft`, `test`, or `master`.
   The "Overwrite" actions create a short-lived working branch and open a PR into the target branch.
2. **Never merge or approve anything.** Do not run `gh pr merge`, `gh pr review`, `gh pr ready`, or
   `gh pr create --auto`. (These are also blocked by `.claude/settings.json`.) Your job ends when
   the PR is open — a human reviews and merges it in GitHub.
3. **No co-authors / no attribution.** Commit messages and PR bodies must contain no
   "Co-Authored-By" line and no "Generated with Claude Code" line. All authorship is the running
   user's own git identity. (The repo's `includeCoAuthoredBy: false` enforces this; don't add it back.)
4. **Confirm only two things with the editor, then run silently.** Confirm (a) **which file**
   to publish and (b) **the sprint number and whether it's a patch**. After those two
   confirmations, do **not** confirm the working branch, the edit, or show a diff preview —
   proceed straight through to pushing and opening the PR(s). (The diff is still computed
   silently to detect "nothing changed" and to write the PR body — it just isn't shown for
   approval.)
5. **Never force-push and never delete `draft`/`test`/`master`.**

## Configuration

| Setting                                    | Value                               |
|--------------------------------------------|-------------------------------------|
| Repo                                       | `trackabout/login-ad`               |
| Content file                               | `login-ad.md`                       |
| Default source file (for "Overwrite" actions) | `%USERPROFILE%\Desktop\login-ad.md` |

Branch → environment → cache timing:

| Branch   | Environment        | Goes live after merge |
|----------|--------------------|-----------------------|
| `draft`  | Staging / Dev / QA | ~1 minute             |
| `test`   | ClientTest         | within ~10 minutes    |
| `master` | Production         | within ~10 minutes    |

Reviewers (GitHub handles, both repo collaborators):

| Name                     | Handle       |
|--------------------------|--------------|
| Elizabeth (Liz) Schurdak | `lschurdak`  |
| Simon Digon              | `SimonDigon` |

## Step 0 — Orient (every run)

1. Make sure you're in the repo working tree. Run `git -C <repo> rev-parse --show-toplevel` and use
   that path for all git commands. Confirm `gh auth status` shows the user is logged in.
2. Refresh remote state: `git fetch origin --prune`.
3. Present the menu below as a **two-step** selection (pick a category, then the specific action)
   and let the editor choose.

## The menu

There are **five** actions. Present them as **two** `AskUserQuestion` selections — one step at a
time — never as a single five-way list. (`AskUserQuestion` allows at most **4** options per
question, so a single five-option menu would silently drop one — historically the
promote-to-Production action — making it unreachable.)

**Step 1 — "What would you like to do?"** (2 options):

- **Overwrite release notes** — replace the copy on one environment with your edited file.
- **Promote release notes** — move an existing copy downstream to a more public environment.

**Step 2 — depends on Step 1:**

- If **Overwrite** → ask **"Which environment?"** (3 options): **Staging** → action 1 /
  **Test** → action 2 / **Production** → action 3.
- If **Promote** → ask **"Which promotion?"** (2 options): **Staging → Test** → action 4 /
  **Test → Production** → action 5.

Each selection resolves to one of the five actions below; everything downstream keys off the action
number, which is unchanged:

| # | Action label                            | What it does                                                     | PR base  | PR head                         |
|---|-----------------------------------------|------------------------------------------------------------------|----------|---------------------------------|
| 1 | Overwrite Staging Release Notes         | Put your edited file on Staging for proofing                     | `draft`  | new working branch off `draft`  |
| 2 | Overwrite Test Release Notes            | Update the ClientTest copy (also keeps `draft` aligned)          | `test`   | new working branch off `test`   |
| 3 | Overwrite Production Release Notes      | Update the Production copy (also keeps `test` + `draft` aligned) | `master` | new working branch off `master` |
| 4 | Push Staging Release Notes to Test      | Promote the Staging copy to ClientTest                           | `test`   | `draft`                         |
| 5 | Push Test Release Notes to Production   | Promote the ClientTest copy to Production                        | `master` | `test`                          |

## Shared rule — sprint, milestone, reviewer

Apply this for whichever action is chosen. Let **base** = the PR's target branch.

- **Sprint number + patch** — always confirm two things with the editor (do both in a single
  `AskUserQuestion`: sprint as a text answer, patch as a yes/no):
  1. **Which sprint is this for?** (e.g. `363`). Accept a whole number; re-ask if it's anything else.
  2. **Is this a patch?** If yes, ask for the patch part and use `<N>.<p>` (e.g. `361.1`); if no,
     use the whole number `<N>` (e.g. `363`).
  The resulting value goes in the PR title and (for "Overwrite" actions) the working-branch name.
- **Milestone** — always, for every action (all five options, including `draft`):
  - Check if a milestone titled `<N>` exists:
    `gh api repos/trackabout/login-ad/milestones --jq '.[].title'`.
  - If not, create it: `gh api repos/trackabout/login-ad/milestones -f title="<N>"`.
  - Pass `--milestone "<N>"` to `gh pr create`.
- **Reviewer** — only when base is `test` or `master`. Ask the editor to choose:
  - **Liz Schurdak** → `lschurdak`
  - **Simon Digon** → `SimonDigon`
  - **Someone else** → ask for the person's name, then find their handle:
    `gh api -X GET search/users -f q="<name>" --jq '.items[].login'` (confirm the right one with the
    editor, and verify they're a collaborator: `gh api repos/trackabout/login-ad/collaborators/<handle>`).
  - **Self-review guard:** get the current user with `gh api user --jq .login`. If the chosen
    reviewer equals it, explain that GitHub won't let someone review their own PR (and `master`
    requires an independent approval), and offer the other reviewer instead.
  - Pass `--reviewer <handle>` to `gh pr create`.
- When base is `draft` (only option 1): milestone is still applied, but **no reviewer** is requested.

## Standardized PR titles (auto-generated — never ask the editor for a title)

| Action                   | Title                                           |
|--------------------------|-------------------------------------------------|
| 1 Overwrite Staging      | `Edit Staging release notes - Sprint <N>`       |
| 2 Overwrite Test         | `Edit ClientTest release notes - Sprint <N>`    |
| 3 Overwrite Production   | `Edit Production release notes - Sprint <N>`    |
| 4 Push Staging → Test    | `Promote Staging -> ClientTest - Sprint <N>`    |
| 5 Push Test → Production | `Promote ClientTest -> Production - Sprint <N>` |

## Auto-generated PR description (never ask the editor for one)

Write the PR body yourself by looking at the diff and **summarizing the additions only**:

- For "Overwrite" actions (1–3): `git diff origin/<base>...<work-branch> -- login-ad.md`.
- For "Push" actions (4–5): `git diff origin/<base>..origin/<head> -- login-ad.md`.

Read the **added** lines (new or updated release-note items) and write a few concise, high-level
bullets describing what is being added or announced. **Ignore removed/deleted lines** — do not
describe what was taken out. Keep it short. Do not add any co-author or "Generated with Claude Code"
footer.

## Shared rule — keep branches aligned (options 2 & 3 only)

A direct change to a downstream branch leaves the upstream branches behind, so the skill also opens
**alignment PRs** that carry the same edit upstream. Alignment only ever flows toward the
*less-public* branch — the skill never auto-pushes toward Production.

| Direct change to (option) | Also open alignment PRs into |
|---------------------------|------------------------------|
| `test` (option 2)         | `draft`                      |
| `master` (option 3)       | `test`, then `draft`         |

Option 1 (`draft`) needs no alignment — it is the most-upstream branch. Promotions (options 4–5) need
none either — they already move content downstream.

For each upstream branch `A` (env `a` = `staging` for `draft`, `test` for `test`), reusing the same
sprint `<N>` and edited file from the primary action:

1. **Name + create the working branch** `login-ad/<a>/<N>-<k>` off `origin/<A>` (same `<k>` naming
   rule as Actions 1–3, computed independently per env prefix).
2. **Apply the edit:** copy the **same** edited file over the repo copy — `cp "<path>" login-ad.md`.
3. **Check for changes (no preview, no confirm):** silently compute
   `git diff origin/<A> -- login-ad.md`. If there is no difference, **skip `A`** and tell the editor
   it's already aligned. Otherwise proceed.
4. **Commit, push, open the PR, open it in the browser:**
   - Title: `Align Staging release notes - Sprint <N>` (`draft`) / `Align ClientTest release notes - Sprint <N>` (`test`).
   - Body: the auto-summary (per the section above) plus a line noting it keeps `A` aligned with the
     <target> change.
   - Always `--milestone "<N>"`; add `--reviewer <handle>` **only when `A` is `test`** — reuse the
     reviewer already chosen for the primary PR (do not re-ask). `draft` alignment PRs get no reviewer.
   - After `gh pr create` returns the URL, open it: `gh pr view <pr-url> --web`.
5. **Report** each alignment PR URL alongside the primary one (and note each was opened in the browser).

The skill never previews or confirms alignment PRs — each is opened automatically and still goes
through human review/merge in GitHub.

## Actions 1–3 — "Overwrite … Release Notes"

Let `B` = the target branch (`draft` / `test` / `master`) and `env` = `staging` / `test` /
`production`.

1. **Find the edited file, then confirm it.** Default to `%USERPROFILE%\Desktop\login-ad.md`. Check
   it exists and is non-empty. If it's missing, ask the editor for the full path to their edited
   `.md` file. **Always show the editor the resolved path and confirm it's the right file before
   moving forward** (this is one of the two allowed confirmations).
2. **Sprint + patch + milestone (always) + reviewer (only for `test`/`master`)** per the shared rule
   above.
3. **Name the working branch** `login-ad/<env>/<N>-<k>` (e.g. `login-ad/staging/361.1-1`):
   - `git ls-remote --heads origin "login-ad/<env>/<N>-*"` → take the highest trailing integer (the
     `<k>` after the final hyphen) and add 1 (first one is `1`).
4. **Create the branch off the target:** `git fetch origin` then
   `git checkout -b login-ad/<env>/<N>-<k> origin/<B>`. If the working tree has stray changes, stash
   them first and restore afterward — never silently discard the editor's work.
5. **Apply the edit:** copy the editor's file over the repo copy — `cp "<path>" login-ad.md`.
6. **Check for changes (no preview, no confirm):** silently compute
   `git diff origin/<B> -- login-ad.md` (to detect emptiness and to write the PR body). If there is
   no difference, stop and tell them there's nothing to change. Do not show the diff or ask for
   confirmation.
7. **Commit & push:** `git add login-ad.md`, `git commit -m "<the standardized PR title>"`,
   `git push -u origin login-ad/<env>/<N>-<k>`.
8. **Open the PR, then open it in the browser** (generate the body per the section above):
   ```
   gh pr create --repo trackabout/login-ad --base <B> --head login-ad/<env>/<N>-<k> \
     --title "<standardized title>" --body "<auto summary>" --milestone "<N>" [--reviewer <handle>]
   ```
   (Always include `--milestone`; add `--reviewer` only for `test`/`master`.) Capture the PR URL it
   prints, then open it: `gh pr view <pr-url> --web`.
9. **Report:** give the editor the PR URL and note you've opened it in the browser, and remind them:
   it's a pull request — once it's reviewed and merged, it appears on **<environment>** within
   **<timing>**. You will not merge it.
10. **Keep branches aligned:** if the target is `test` or `master`, run the *keep branches aligned*
    rule above for each upstream branch (`test` → `draft`; `master` → `test` then `draft`), then
    include those alignment PR URLs in your report.

## Actions 4–5 — "Push … to …" (promotion)

Option 4 = `draft` → `test`; option 5 = `test` → `master`. Let `head` and `base` be those branches.

1. **Check there's something to promote (no display, no confirm):** silently run
   `git diff origin/<base>..origin/<head> -- login-ad.md` (to detect emptiness and to write the PR
   body). If there's nothing to promote, stop and say so. Do not print the log or diff.
2. **Sprint + patch + milestone + reviewer** per the shared rule (base is always `test`/`master` here).
3. **Open the PR, then open it in the browser** (auto-generated body):
   ```
   gh pr create --repo trackabout/login-ad --base <base> --head <head> \
     --title "<standardized promote title>" --body "<auto summary>" --milestone "<N>" --reviewer <handle>
   ```
   Capture the PR URL it prints, then open it: `gh pr view <pr-url> --web`.
4. **Report:** give the PR URL, note you've opened it in the browser, and remind them
   ClientTest/Production updates within ~10 minutes after a human merges it.

## If something goes wrong

- Merge conflicts on `git checkout -b ... origin/<B>` are unlikely (you branch straight from the
  remote). If a stash pop conflicts, walk the editor through it or restore their file from the
  Desktop copy.
- If `gh pr create` reports a reviewer error (e.g. self-review), fix the reviewer and retry — never
  drop the `--reviewer` requirement silently on `test`/`master`.
- If a push is rejected, fetch and rebuild the working branch from the latest `origin/<B>`; never
  force-push.
