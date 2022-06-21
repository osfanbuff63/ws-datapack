# TODO: menu
execute if score WiiSports.Setup WiiSports.Setup matches 0 run tellraw @s {"text": "The Wii Sports Datapack hasn't been set up yet! Run /trigger WiiSportsSetup to start!","color": "red"}
execute unless score WiiSports.Setup WiiSports.Setup matches 0 run tellraw @s {"text":"menu coming soon!"}
