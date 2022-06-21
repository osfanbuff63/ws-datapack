# TODO: menu
execute if score WS.Setup WS.Setup matches 0 run tellraw @s {"text": "The WS Datapack hasn't been set up yet! Run /trigger WiiSportsSetup to start!","color": "red"}
execute unless score WS.Setup WS.Setup matches 0 run tellraw @s {"text":"menu coming soon!"}
