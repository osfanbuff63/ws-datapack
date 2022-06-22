scoreboard objectives add WS.Menu trigger "WS Datapack Menu"
scoreboard objectives add WS.Setup trigger "WS Datapack Setup"
execute unless score WS.Setup WS.Setup matches 1 run function ws_datapack:setup/start_setup
scoreboard objectives add WS.Config trigger