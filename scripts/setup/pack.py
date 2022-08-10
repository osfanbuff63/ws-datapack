#!/usr/bin/python3
# WS Datapack Development Environment Setup Helper by osfanbuff63 and contributors
# Licensed under the MIT License
import pygit2
import shutil

version = "v0.1.0-beta3"
terminal_title = f"WS Datapack Development Environment Setup Helper {version}"
print(f"\33]0;{terminal_title}\a", end="", flush=True)

def pause():
    programPause = input("Press the <ENTER> key to continue...")

print(f"WS Datapack Development Environment Setup Helper {version}")
print("This will set up a development environment for the WS Datapack.")
print("If you want to make a documentation change, this will not make the needed changes for that and you should press Ctrl+C now.")
print("After that, download the latest docs script from https://raw.githubusercontent.com/osfanbuff63/ws-datapack/master/scripts/setup/docs.py if using Unix or Windows, or the latest .exe from Actions if using Windows.")
print("You can copy that link into a browser, `wget`, `curl`, I don't care lol.")
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

print("The setup helper has completed. To proceed, you will likely need `git` and `gh`.")
print("In addition, you should checkout a new branch - this is planned to be part of the script but is currently erroring.")
print("More detailed instructions are in CONTRIBUTING.md on GitHub.")
pause()
