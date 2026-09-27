# Practical Workflow

## Phase 1 — Create and Switch to `student01`

### 1. Open the terminal

Open a Kali Linux terminal.

### 2. Create the user

**Run as:** existing administrative/sudo-capable account.

```bash
sudo useradd -m student01
```

**Purpose:** Creates the `student01` user and its home directory.

**Verify:**
```bash
id student01
```

**Evidence:** Capture the successful user verification if required.

### 3. Set the password

**Run as:** sudo-capable account.

```bash
sudo passwd student01
```

Enter the password when prompted.

**Verify:** The password command should complete successfully. Do not record the password in the repository.

### 4. Add the user to sudo if required

**Run as:** sudo-capable account.

```bash
sudo usermod -aG sudo student01
```

The task says to add the user to the sudo group **if required**. Do not assume that it is required by every environment.

### 5. Switch to the new user

```bash
su - student01
```

**Expected result:** The shell changes to the `student01` login environment.

### 6. Confirm the account

```bash
whoami
```

**Expected result:**
```text
student01
```

**Evidence:** Capture `whoami` and its real output.

---

## Phase 2 — Directory and File Management

### 1. Create the project structure

**Run as:** `student01`.

```bash
mkdir -p ~/project/docs ~/project/scripts ~/project/bin
```

**Verify:**
```bash
ls -la ~/project
```

### 2. Enter `docs`

```bash
cd ~/project/docs
```

### 3. Create `report.txt` using `echo`

```bash
echo "This is the initial report by student01." > report.txt
```

**Verify:**
```bash
cat report.txt
```

Expected content should be the exact required line.

### 4. View hidden files and directories

```bash
ls -la
```

**Evidence:** Capture the directory listing.

### 5. Create the hidden file

```bash
echo "Top Secret." > .secret.txt
```

**Verify:**
```bash
ls -la
cat .secret.txt
```

---

## Phase 3 — Edit and Move Files

### 1. Edit `report.txt` with nano

```bash
nano report.txt
```

Add this second line:

```text
Appended line using nano.
```

Save and exit nano.

**Verify:**
```bash
cat report.txt
```

### 2. Copy `report.txt` to `scripts`

```bash
cp report.txt ../scripts/
```

**Verify:**
```bash
ls -la ../scripts
```

### 3. Move and rename `.secret.txt`

```bash
mv .secret.txt ../bin/classified.txt
```

**Verify:**
```bash
ls -la ../bin
```

The destination filename must be `classified.txt`.

### 4. Create `install.sh`

```bash
cd ../scripts
echo '#!/bin/bash' > install.sh
echo 'echo "Installing project dependencies..."' >> install.sh
```

**Verify:**
```bash
cat install.sh
```

The content must match the activity:

```text
#!/bin/bash
echo "Installing project dependencies..."
```

---

## Phase 4 — Configure Permissions with `chmod`

### 1. Make `install.sh` executable by all users

From `~/project/scripts`:

```bash
chmod a+x install.sh
```

**Verify:**
```bash
ls -la install.sh
```

Confirm that the execute bit is present for user, group, and others.

### 2. Remove read permission for others from `classified.txt`

```bash
chmod o-r ../bin/classified.txt
```

**Verify:**
```bash
ls -la ../bin/classified.txt
```

### 3. Create `admin_notes.txt`

From the `docs` directory:

```bash
cd ../docs
touch admin_notes.txt
```

Set permission so only the owner can read and write:

```bash
chmod 600 admin_notes.txt
```

**Verify:**
```bash
ls -la admin_notes.txt
```

Do not proceed until the permission display confirms the intended owner-only read/write state.

---

## Phase 5 — Cleanup and Backup

### 1. Delete `admin_notes.txt`

```bash
rm admin_notes.txt
```

**Verify:**
```bash
ls -la
```

Confirm `admin_notes.txt` is no longer present.

### 2. Create `backup`

From `~/project/docs`:

```bash
cd ..
mkdir backup
```

### 3. Copy the entire content of `docs` and `scripts` into `backup`

The task requires the contents of both directories to be copied into `backup`. To preserve the directory organization clearly:

```bash
cp -r docs backup/
cp -r scripts backup/
```

**Verify:**
```bash
ls -la backup
ls -la backup/docs
ls -la backup/scripts
```

---

## Phase 6 — Final Checks

### 1. Navigate to the home directory

```bash
cd ~
```

### 2. Run `tree project`

```bash
tree project
```

If `tree` is not installed, the task permits:

```bash
sudo apt install tree
```

Then:

```bash
tree project
```

**Evidence:** Capture the final tree output.

### 3. Verify permissions and locations

Use:

```bash
ls -la project/docs
ls -la project/scripts
ls -la project/bin
ls -la project/backup
```

Confirm:

- `report.txt` exists in `docs`.
- `report.txt` exists in `scripts`.
- `install.sh` exists in `scripts`.
- `classified.txt` exists in `bin`.
- `admin_notes.txt` has been deleted.
- Backup contains copies of the `docs` and `scripts` contents.
- Permissions match the task.

---

## Phase 7 — Optional Command History

The task lists this as optional.

```bash
history
```

To redirect the history output to a file in the home directory:

```bash
history > ~/commands_used.txt
```

Verify:

```bash
ls -la ~/commands_used.txt
```

Do not treat the placeholder submission file in this repository as proof that the optional history has been completed.

---

## Phase 8 — Final Evidence Review

Before submission:

1. Review the evidence checklist.
2. Replace placeholders only with actual output.
3. Confirm screenshots show the relevant command and output.
4. Do not include passwords or other sensitive information.
5. Do not fabricate command output or screenshots.
