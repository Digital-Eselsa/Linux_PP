#!/bin/bash
# Linux Command Line Practical Task
# Command reference only. Review each command before execution.
# Interactive and privileged operations are intentionally not blindly automated.

# STEP 1 — Create and switch to student01
sudo useradd -m student01
sudo passwd student01
# Run only if required by the activity/environment:
sudo usermod -aG sudo student01
su - student01
whoami

# STEP 2 — Directory & File Management
mkdir -p ~/project/docs ~/project/scripts ~/project/bin
cd ~/project/docs
echo "This is the initial report by student01." > report.txt
ls -la
echo "Top Secret." > .secret.txt
ls -la

# STEP 3 — Edit and Move Files
# Manual step: open report.txt and add the required second line:
nano report.txt
cat report.txt

cp report.txt ../scripts/
mv .secret.txt ../bin/classified.txt

cd ../scripts
echo '#!/bin/bash' > install.sh
echo 'echo "Installing project dependencies..."' >> install.sh
cat install.sh

# STEP 4 — Permissions
chmod a+x install.sh
ls -la install.sh

chmod o-r ../bin/classified.txt
ls -la ../bin/classified.txt

cd ../docs
touch admin_notes.txt
chmod 600 admin_notes.txt
ls -la admin_notes.txt

# STEP 5 — Clean-Up and Backup
rm admin_notes.txt
cd ..
mkdir backup
cp -r docs backup/
cp -r scripts backup/

# FINAL CHECKS
cd ~
# If tree is not installed, use:
# sudo apt install tree
tree project
ls -la project/docs
ls -la project/scripts
ls -la project/bin
ls -la project/backup

# BONUS — Optional
history
history > ~/commands_used.txt
