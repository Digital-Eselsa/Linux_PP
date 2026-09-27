# Evidence Checklist

Do not create or upload fake evidence. Capture screenshots and terminal output from your own Kali Linux session.

## Suggested Evidence

| Suggested filename | What it should prove |
|---|---|
| `01-user-created.png` | `student01` exists and the account setup step is complete. |
| `02-whoami-student01.png` | `whoami` confirms the active user is `student01`. |
| `03-project-structure.png` | `project`, `docs`, `scripts`, and `bin` exist. |
| `04-report-and-hidden-file.png` | `report.txt` and `.secret.txt` are present with the required content. |
| `05-report-edited.png` | `report.txt` contains both required lines after editing with `nano`. |
| `06-file-moves.png` | `report.txt` is copied to `scripts` and `.secret.txt` is renamed to `classified.txt` in `bin`. |
| `07-install-script.png` | `install.sh` contains the required two lines. |
| `08-permissions.png` | Permission settings for `install.sh`, `classified.txt`, and `admin_notes.txt` are shown. |
| `09-backup.png` | `backup` contains copies of `docs` and `scripts`. |
| `10-final-tree.png` | `tree project` shows the final project structure. |
| `11-final-listings.png` | `ls -la` confirms final locations and permissions. |
| `12-command-history.png` | Optional history output / `commands_used.txt`, if completed. |

## Capture Rules

- Capture the command and its output together whenever possible.
- Use only real output from your lab.
- Avoid showing passwords.
- Keep filenames descriptive and sequential.
- Do not add screenshots that claim completion when the step has not actually been completed.
