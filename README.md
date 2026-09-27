# Linux Command Line Practical Task

A GitHub-ready workflow for completing the **Linux Command Line Practical Task** in Kali Linux as the newly created user `student01`.

## Objective

Demonstrate understanding of basic Linux commands by completing the required user-management, directory/file-management, file-editing, file-moving, permission, cleanup, backup, and verification tasks as `student01`.

## Requirements from the Activity

The activity requires:

- Create the user `student01` and set a password.
- Add `student01` to the `sudo` group if required.
- Switch to `student01` and verify with `whoami`.
- Create `project` with `docs`, `scripts`, and `bin` subdirectories.
- Create and edit `report.txt`.
- Create and move the hidden `.secret.txt`.
- Create `install.sh` with the specified contents.
- Apply the required permissions using `chmod`.
- Delete `admin_notes.txt`.
- Create `backup` and copy the contents of `docs` and `scripts` into it.
- Run `tree project` and `ls -la` for final verification.
- Optionally save command history to `commands_used.txt`.

## Technologies / Tools

- Kali Linux
- Linux terminal
- `useradd`
- `passwd`
- `usermod`
- `su`
- `whoami`
- `mkdir`
- `cd`
- `echo`
- `ls`
- `nano`
- `cp`
- `mv`
- `chmod`
- `rm`
- `tree`
- `history`

## Prerequisites

- A working Kali Linux installation.
- Access to a terminal.
- An account with permission to create users and install `tree` if it is not already installed.
- The ability to use `sudo` where the task requires it.

## Important Safety Note

Run the commands on your Kali Linux lab environment. The user-creation commands require administrative privileges. Do not replace `student01` with another username unless the task itself is changed.

## Project Structure

```text
linux-command-line-practical-task/
├── README.md
├── .gitignore
├── docs/
│   ├── README.md
│   └── task-overview.md
├── workflow/
│   ├── README.md
│   └── workflow.md
├── commands/
│   ├── README.md
│   └── commands.sh
├── scripts/
│   ├── README.md
│   └── install.sh.template
├── evidence/
│   ├── README.md
│   ├── screenshots/
│   │   └── .gitkeep
│   └── terminal-output/
│       └── .gitkeep
└── submission/
    ├── README.md
    ├── command-history.txt
    └── final-output.txt
```

## Workflow

Follow `workflow/workflow.md` in order. It explains what to do, the command to use, what to verify, and what evidence to capture.

## Key Commands

The complete command reference is in `commands/commands.sh`. Some commands require manual interaction and are intentionally documented rather than blindly automated.

Examples:

```bash
sudo useradd -m student01
sudo passwd student01
sudo usermod -aG sudo student01
su - student01
whoami
```

For the file-management portion:

```bash
mkdir -p ~/project/{docs,scripts,bin}
cd ~/project/docs
echo "This is the initial report by student01." > report.txt
ls -la
echo "Top Secret." > .secret.txt
nano report.txt
cp report.txt ../scripts/
mv .secret.txt ../bin/classified.txt
```

## Expected Final Layout

After completing the activity, the `project` directory should contain:

```text
project/
├── backup/
│   ├── docs/
│   │   └── report.txt
│   └── scripts/
│       ├── install.sh
│       └── report.txt
├── bin/
│   └── classified.txt
├── docs/
│   └── report.txt
└── scripts/
    ├── install.sh
    └── report.txt
```

The exact permission bits must be verified with `ls -la`; do not assume success without checking.

## Evidence

Use `evidence/README.md` for the evidence checklist and suggested screenshot names. Do not create fake screenshots or output.

## Submission

Use `submission/README.md`. Replace placeholders with your real command history and final terminal output if the activity requires them.

## Troubleshooting

### `tree: command not found`

The activity explicitly allows:

```bash
sudo apt install tree
```

Then rerun:

```bash
tree project
```

### `su - student01` fails

Verify that the user exists:

```bash
id student01
```

If necessary, set/reset the password using the administrative account:

```bash
sudo passwd student01
```

### Permission changes look incorrect

Check the actual file permissions:

```bash
ls -la ~/project/docs
ls -la ~/project/scripts
ls -la ~/project/bin
```

## Final Verification Checklist

- [ ] `student01` created.
- [ ] Password set.
- [ ] `student01` added to `sudo` group if required.
- [ ] Switched to `student01`.
- [ ] `whoami` confirms `student01`.
- [ ] `project` created.
- [ ] `docs`, `scripts`, and `bin` created.
- [ ] `report.txt` created with the required initial line.
- [ ] `report.txt` edited with the required second line.
- [ ] `.secret.txt` created with `Top Secret.`.
- [ ] `.secret.txt` moved and renamed to `classified.txt`.
- [ ] `report.txt` copied into `scripts`.
- [ ] `install.sh` created with the specified content.
- [ ] `install.sh` made executable by all users.
- [ ] Other-read permission removed from `classified.txt`.
- [ ] `admin_notes.txt` created with owner-only read/write permission.
- [ ] `admin_notes.txt` deleted.
- [ ] `backup` created.
- [ ] Contents of `docs` and `scripts` copied into `backup`.
- [ ] `tree project` checked.
- [ ] `ls -la` used to verify permissions and locations.
- [ ] Optional command history saved if required.
- [ ] Screenshots/evidence captured without fabricated output.
