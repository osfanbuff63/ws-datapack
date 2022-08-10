from cx_Freeze import setup, Executable

base = None    

executables = [Executable("docs.py", base=base)]

packages = ["idna", "pygit2", "shutil", "sys", "subprocess", "os"]
options = {
    "build_exe": {    
        "packages":packages,
    },    
}

setup(
    name = "WS Datapack Documentation Setup Helper",
    options = options,
    version = "v0.1.0-beta1",
    description = "Setup helper for documentation of the WS Datapack",
    executables = executables
)
