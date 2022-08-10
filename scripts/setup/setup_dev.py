from cx_Freeze import setup, Executable

base = None    

executables = [Executable("pack.py", base=base)]

packages = ["idna", "pygit2", "shutil"]
options = {
    "build_exe": {    
        "packages":packages,
    },    
}

setup(
    name = "WS Datapack Development Environment Setup Helper",
    options = options,
    version = "v0.1.0-beta2",
    description = "Setup helper for a development environment of the WS Datapack",
    executables = executables
)
