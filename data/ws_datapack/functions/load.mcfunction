scoreboard objectives add WS.Menu trigger "WS Datapack Menu"
scoreboard objectives add WS.Setup dummy
execute unless score WS.Setup WiiSports.Setup matches 1 run function ws_datapack:setup/start_setup