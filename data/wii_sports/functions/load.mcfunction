scoreboard objectives add WiiSports.Menu trigger "Wii Sports Menu"
scoreboard objectives add WiiSports.Setup dummy
execute unless score WiiSports.Setup WiiSports.Setup matches 1 run function wii_sports:setup/start_setup