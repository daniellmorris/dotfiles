# dotfiles

This dotfile repo uses the yadm tool in order to provision and configure dotfiles on a system.

## Usage with yadm

Prerequisite: yadm installation

```bash
# Get the Dotfiles onto the system
yadm clone https://github.com/daniellmorris/dotfiles.git 
# If the clone results in warnings because of pre-existing dotfiles, overwrite
#   the existing files.
yadm reset --hard HEAD

# Check for changes in your local dotfiles
yadm diff

# Commit changes back to the repo
yadm add -u :/
yadm commit -m "The description of changes"
yadm push
```

## Usage with git
If you prefer not to run yadm or to replace your dotfiles. Do the following
1. Clone this repository
   ```
   git clone https://github.com/daniellmorris/dotfiles.git 
   ```
2. Navigate to the repository directory
3. Run the follwing 
   ```
   ./makeVirtualHome.sh
   ```
This should set the checkout folder as your home folder and start a bash session. This will allow you to test this.
