#!/usr/bin/bash

# WS Datapack Setup Helper by osfanbuff63 and contributors
# Licensed under the MIT License

# Setup. Setting logs and version number
# You'll find this in ~/.ws-datapack-setup/docs/logs in a *.log file, and it will be needed for reporting
# TODO: port logs to the batch file

# NOTE: Bump version here when a change is made!
version=v0.1.0-alpha1
beta=true
mkdir ~/.ws-datapack-setup/docs/logs/ || return
datetime=$( date '%Y-%m-%d-%H:&M:%S' )
exec > ~/.ws-datapack-setup/docs/logs/"$datetime".log 2>&1
# We only support apt-based distros
echo "WS Datapack Setup Helper Documentation Edition - $version"

echo 'WARNING: This script has only been tested in Ubuntu 22.04 LTS (via WSL and actual Linux)! It should work with any apt-get based distro (or if you somehow install apt-get), but will not work in any other distros!'
echo 'If you continue, you agree that you are on a supported distro (as in, an apt-based one), else you will get no support from the project maintainer(s). Otherwise, press Ctrl+C now.'
read -n1 -r -p "Press a key to agree and continue..." key

# If this is a beta, make a note of it
if $beta '=' true; then
  echo 'WARNING: This is a beta or development version and may possibly be unstable! Only use this if you are sure you know what you are doing!'
  read -n1 -r -p "Press a key to agree and continue..." key
fi

# Checking for dependencies, if not found installing them
which /usr/bin/curl
if $? !=0; then
  sudo apt-get install curl # cuRL is needed for commands below, if not installed either this script was downloaded from the GitHub page or fetched via wget
                            # cuRL is also cross-platform.
fi
set $? 0
which /usr/bin/git
if $? !=0; then
  sudo apt-get install git
fi
set $? 0
which /usr/bin/gh
if $? !=0; then
  curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
  sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
  sudo apt-get update
  sudo apt-get install gh
fi
which usr/bin/ruby
which usr/bin/gem
if $? !=0; then
  sudo apt-get install ruby-full
fi

# Now fun stuff! Let's actually do stuff!
gh repo clone osfanbuff63/ws-datapack || echo ''\''gh'\'' seems to have failed to clone the repo! Try running the script again, or following the instructions if it showed an error.' && exit 1 
cd ws-datapack || return
GitBranch=$1 || echo 'Looks like you didn'\''t provide a git branch! Try re-running the program with '\''./docs your-cool-branch'\''.' && exit 2
git checkout -b "$GitBranch"
cd docs || return
# TODO: new issue template for reported issues (should be linked in the batch file too)
gem install bundler || echo 'Looks like there'\''s a RubyGems failure! Maybe it isn'\''t installed somehow? Normally this script protects against it, but try running '\''sudo apt-get install ruby-full'\'' again?' && echo 'If you are seeing this issue again, make an issue on GitHub <https://github.com/osfanbuff63/ws-datapack/issues/new/choose> and we'\''ll try to help you out!' && exit 3
bundle install || echo 'Looks like there'\''s a Bundler failure! This is normal if you'\''d modified the Gemfile, but if not, redownloading the script and trying again, as it'\''s possible a corrupt commit was pushed to the repository and was fixed in the time since you downloaded the script.' && echo 'If that doesn'\''t help, create an issue on GitHub <https://github.com/osfanbuff63/ws-datapack/issues/new/choose>, as it'\''s possible a corrupt commit was pushed to the repository and hasn'\''t been fixed yet.' && exit 4
if $? '=' 0; then
  echo 'Success! Open this folder in your text editor of choice, and start coding!'
  read -n1 -r -p "Press a key to finish..." key
  exit 0
else echo 'It looks like something went wrong, but we'\''re not exactly sure what. Please report an issue on GitHub <https://github.com/osfanbuff63/ws-datapack/issues/new/choose> and upload your log file.' && exit 5
fi
