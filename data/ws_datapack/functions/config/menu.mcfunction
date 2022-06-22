# Config menu can't be triggered if you haven't set up yet
execute if score WS.Setup WS.Setup matches 0 run function ws_datapack:setup/no_setup