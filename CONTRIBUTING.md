# Contributing to the WS Datapack

Thanks in advance for wanting to contribute! There are two main spots where you can contribute, both in code (resource pack and data pack), and documentation. First, there's a few things you'll need to contribute no matter what:

- A computer running Windows, macOS, or Linux (any distro is fine)
- [`git`](https://git-scm.com/downloads) - used to track your changes on your machine
- [`gh`](https://cli.github.com) - used to make a PR and submit your changes
- **Recommended**: [Python 3](https://www.python.org) - used to run the script to install everything you need to start.

From here, I'll split into two sections - documentation and code changes.

## Code changes

### Requirements

You will also need these things in addition to the standard requirements:

- Your IDE of choice (This has a .vscode/extensions.json file, with rich datapack integration using Spyglass, but any IDE should work) - used to make your changes
- A computer meeting the [minimum specs for Minecraft Java Edition](https://minecraft.fandom.com/wiki/Java_Edition_hardware_requirements) and an installation - used to test your changes

### Setting up for your work

If you already have the repository locally to work on, you can skip this step. **MAKE SURE YOU HAVE THE PREREQUESITES BEFORE CONTINUING!**

1. Go to the folder where you would like the repository to be and note the location. I usually tend to put mine on my Desktop (`~/Desktop`).
2. Open a terminal and run `cd path/to/repository/folder`, where `/path/to/repository/folder` is the path you noted earlier (in my example, I'd run `cd ~/Desktop`). On Windows, I recommend using the new [Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/install), but any shell will work.
3. Run the new Python script from [here (copy/paste if you want to use curl/wget)](https://raw.githubusercontent.com/osfanbuff63/ws-datapack/master/scripts/setup/pack.py) with `python pack.py` (or if you also have python2 installed e.g. on Linux, `python3 pack.py`). Once this completes, you'll be ready to go!
4. (Optional), if you want to use a separate branch (which is recommended especially if you will be making multiple contributions), run `git checkout -B your-branch-here` with any branch name instead of `your-branch-here`.
5. Open this folder in the IDE of your choice and start coding!

### Submitting your work

Once you have completed in your IDE, here's what to do:

1. If your IDE has a commit option, do that, but **DON'T SYNC OR PUSH TO THE REMOTE!**. If your IDE doesn't, open a terminal in your directory and run `git commit -m "Your message here!"`, where "Your message here!" is a useful description of your changes.
2. Open a terminal if it isn't already open to your directory (if you used one in the last step, you don't need to open another), and run `gh pr create`. If prompted, select `Create a fork of osfanbuff63/ws-datapack` or select `yourusername/ws-datapack` if you already created one.
3. Fill out the PR details. When prompted about a PR template, select either `bug_fix.md` or `new_feature.md`, depending on your changes, and follow the templates **completely**!
4. Once complete, select `Submit`.

You are now finished with your work! If you want to make more contributions, run `git checkout master` to get the changes from master (skip this if you are building off your existing PR), and then run `git checkout -B your-branch-here`, with any branch name instead of `your-branch-here`.

## Documentation

### Requirements

Documentation also requires a few things, in addition to the standard requirements, since it is a Ruby/Jekyll site:

- Any text editor (the default Notepad or Apple TextEdit will work, but one with a [markdownlint](https://github.com/DavidAnson/markdownlint) extension and Markdown syntax highlighting is recommended, and an integrated terminal would be even better)
- An installation of [Ruby](https://www.ruby-lang.org/en/downloads/) and RubyGems (which is standard in a Ruby install).

### Setting up for your work

If you already have the repository locally to work on, you can skip this step. **MAKE SURE YOU HAVE THE PREREQUESITES BEFORE CONTINUING!**

1. Go to the folder where you would like the repository to be and note the location. I usually tend to put mine on my Desktop (`~/Desktop`).
2. Open a terminal and run `cd path/to/repository/folder`, where `/path/to/repository/folder` is the path you noted earlier (in my example, I'd run `cd ~/Desktop`). On Windows, I recommend using the new [Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/install), but any shell will work.
3. Run the new Python script from [here (copy/paste if you want to use curl/wget)](https://raw.githubusercontent.com/osfanbuff63/ws-datapack/master/scripts/setup/docs.py) with `python docs.py` (or if you also have python2 installed e.g. on Linux, `python3 pack.py`). Once this completes, you'll be ready to go!
4. (Optional), if you want to use a separate branch (which is recommended especially if you will be making multiple contributions), run `git checkout -B your-branch-here` with any branch name instead of `your-branch-here`.
5. Make your changes!

### Testing and submitting your work

Once you have completed the changes, here's what to do:

1. Run `bundle install` if you made any changes to the `Gemfile` or `Gemfile.lock`, and then run `bundle exec jekyll serve`. This will build the site and deploy it to [https://localhost:4000](https://localhost:4000). If this fails, try to fix your error, but otherwise check out the site and make sure it works properly!
2. Once you are done, hit Ctrl+C and enter `y` once or twice until it stops.
3. If youare using an IDE and it has a commit option, do that, but **DON'T SYNC OR PUSH TO THE REMOTE!**. If your IDE doesn't, run `git commit -m "Your message here!"`, where "Your message here!" is a useful description of your changes.
4. Open a terminal if it isn't already open to your directory (if you used one in the last step, you don't need to open another), and run `gh pr create`. If prompted, select `Create a fork of osfanbuff63/ws-datapack` or select `yourusername/ws-datapack` if you already created one.
5. Fill out the PR details. When prompted about a PR template, select `documentation.md` <!-- TODO: make this template work again --> and follow the templates **completely**!
6. Once complete, hit `Submit`.

You are now finished with your work! If you want to make more contributions, run `git checkout master` to get the changes from master (skip this if you are building off your existing PR), and then run `git checkout -B your-branch-here`, with any branch name instead of `your-branch-here`.
