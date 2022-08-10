import os
import pygit2
import shutil
import subprocess
import sys

version = "v0.1.0-beta1"
terminal_title = f"WS Datapack Documentation Setup Helper {version}"
print(f"\33]0;{terminal_title}\a", end="", flush=True)

def pause():
    programPause = input("Press the <ENTER> key to continue...")

print(f"WS Datapack Documentation Setup Helper {version}")
print("This will set up an environment for documentation changes to be made for the WS Datapack.")
print("If you want to make a code change, it is recommended to use the other script - but this script makes many of the same changes and so it isn't stricly needed.")
print("If you still want to, download the latest development environment script from https://raw.githubusercontent.com/osfanbuff63/ws-datapack/master/scripts/setup/pack.py if using Unix or Windows, or the latest .exe from Actions if using Windows.")
print("You can copy that link into a browser, `wget`, `curl`, I don't care lol.")
print("")
print("You must have Ruby installed for this script to work, otherwise press Ctrl+C now and install it.")
print("")
print("This script will clone the repository to the directory ./ws-datapack/. If you don't know what that means, just run this from the directory you want the repo in.")
print("If you have an existing directory called 'ws-datapack', please delete it if it has a .git directory. Otherwise, the script will fail with PermissionError 5 (access is denied).")
pause()

repo_url = "https://github.com/osfanbuff63/ws-datapack"
repo_path = "ws-datapack/"

try:
    repo = pygit2.clone_repository(repo_url, repo_path)
except ValueError:
    try:
        print()
        dir_path = "ws-datapack/"
        shutil.rmtree(dir_path)
    except PermissionError:
        print("Error code 5 - we couldn't delete an existing ws-datapack folder. Press Enter to continue and try to bypass this step, or press Ctrl+C to stop now.")
        pause()
        pass
try:
    os.chdir("/docs/")
except FileNotFoundError:
    print("Huh? The docs directory doesn\"t seem to exist! Check the GitHub repo, otherwise join my Discord (https://osfanbuff63.github.io/discord) or create an issue on GitHub.")

try:
    subprocess.run(["gem install bundler", "bundle install"], check=True)
except subprocess.CalledProcessError:
    print("Uh oh, doesn't look like Ruby or at least RubyGems is installed! Make sure you have RubyWithDevkit installed, then run the script again.")
    print("If you can't figure it out, you can join my Discord for help: https://osfanbuff63.github.io/discord")
    sys.exit("RubyGems not installed")

print("The setup helper has completed. To proceed, you will likely need `git` and `gh`.")
print("In addition, you should checkout a new branch - this is planned to be part of the script but is currently erroring.")
print("More detailed instructions are in CONTRIBUTING.md on GitHub.")
pause()
