# Repository Guidelines

## Project Structure & Module Organization

This repository provides Bash prompt colors and environment-specific prompt presets.

- `bash_ps1`: color constants, the `_color_test` helper, and prompt selection through `C_ENV`.
- `bash_aliases`: startup snippet that sources `~/.bash_ps1` and assigns `PS1`.
- `README.md`: installation instructions, optional aliases, and prompt examples.
- `images/`: screenshots named after presets, such as `DEV.png` and `PROD.png`.
- `LICENSE`: MIT license.

There are no build artifacts, dependency manifests, or automated test directories.

## Build, Test, and Development Commands

No build or package installation is required. From the repository root, check both shell files:

```bash
bash -n bash_ps1
bash -n bash_aliases
```

For a local preview, start a clean interactive Bash session with `bash --noprofile --norc`, then run:

```bash
C_ENV="DEV"
source ./bash_ps1
PS1="$C_PROMPT"
color_test
```

Use `exit` to leave the preview session. This avoids editing personal startup files while developing.

## Coding Style & Naming Conventions

Use Bash syntax and preserve prompt escape sequences, especially `\[` and `\]` around nonprinting color codes. Follow surrounding indentation: prompt-selection and startup blocks use four spaces; `_color_test` uses tabs.

Keep color and prompt variables uppercase with the `C_` prefix, such as `C_FG_GREEN` and `C_DEV_HOST`. Environment identifiers are `PROD`, `TEST`, `DEV`, `EXP`, `LEADER`, and `WORKER`. Keep helper names consistent with `_color_test`. No formatter or lint configuration is currently provided.

## Testing Guidelines

There is no configured test framework or coverage threshold. Run the syntax checks above and preview every affected preset. Check colors, resets, username, hostname, time, directory, and cursor alignment when typing long commands. Terminal rendering varies; use `color_test` to inspect supported styles. Update matching screenshots when changing visible prompt appearance.

## Commit & Pull Request Guidelines

History uses short descriptive subjects, such as “Updated escaping” and “Adding additional configs”; no strict commit prefix is established. Write concise subjects describing the change.

Pull requests should explain the affected presets, summarize validation, and link related issues when applicable. Include screenshots for visual changes and update `README.md` when installation or configuration changes.
