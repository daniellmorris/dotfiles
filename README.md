# dotfiles

This dotfile repo uses the yadm tool in order to provision and configure dotfiles on a system.

## Usage

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
