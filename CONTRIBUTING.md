# Contributing

This file collects the conventions this repository follows: how commits, branches, integration and tags are written.

## Commits

- Write the title as `area: description`.
- Write the description in the imperative mood, in lowercase, with no trailing period.
- Keep the title within 50 characters; never exceed 72.
- Add a body only when the reason for the change is not clear from the title. Separate it from the title with a blank line and wrap it at 72 characters.
- Use a GitHub no-reply address as the author email.

The area is the file or directory the commit touches, as it appears in the repository and without its extension. When a change spans several files on the same subject, the area is that subject. It is always a single lowercase word, and a subject always keeps the same area, so the history can be filtered by it.

Areas in use:

| Area           | Covers                                     |
| -------------- | ------------------------------------------ |
| `license`      | `LICENSE.md`                               |
| `gitignore`    | `.gitignore`                               |
| `trace`        | the startup trace in the zsh startup files |
| `contributing` | this file                                  |

## Branches

- Develop each milestone on its own branch.
- Name it `h<n>/<summary>`: the milestone number and a short English summary in lowercase words joined by hyphens, such as `h2/startup-trace`.

## Integration

- Merge every branch into `main` through a pull request.
- Use merge commits only. Squash and rebase merging are disabled, so atomic commits keep their hashes.
- Title the pull request like a commit, with the milestone as its area: `h<n>: description`.
- Use the description to tell what the milestone taught and decided. It becomes the body of the merge commit.

## Tags

- Close each milestone with an annotated tag, signed with SSH.
- Follow semantic versioning: closing milestone `n` publishes `v0.<n>.0` until `v1.0.0` marks the first release for outside users.
- From `v1.0.0` on, the public API is the installer and the files it places in `$HOME`.
- Reserve the patch number for fixes published between two milestone closes.
- Never move a published tag. If one is wrong, publish the fix under a new number.
