# Menu trigger
execute as @a if score @s WS.Menu matches 1 run function ws_datapack:menu
scoreboard players enable @s WS.Menu

# Setup-related triggers
execute as @a if score @s WS.Setup matches 1 run function ws_datapack:setup/start_setup
execute as @a if score @s WS.Setup matches 2 run function ws_datapack:setup/wuhu_island_map
execute as @a unless score WS.Setup WS.Setup matches 1 run scoreboard players enable @s WS.Setup

# Config triggers
execute as @a if score @s WS.Config matches 1 run function ws_datapack:config/menu
execute as @a if score @s WS.Config matches 2 run function ws_datapack:config/handler