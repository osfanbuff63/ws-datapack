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

# Game triggers: won't be disabled until the end of the game
execute if score WS.Game WS.Game matches 1 if score WS.Island WS.Config matches 1 run function ws_datapack:archery/tick

# These only run once
execute as @a if score @s WS.Game matches 1 if score WS.Island WS.Config matches 0 unless score WS.Game WS.Game matches 1 run schedule function ws_datapack:archery/place1 1s
execute as @a if score @s WS.Game matches 1 unless score WS.Game WS.Game matches 1 run schedule function ws_datapack:archery/load 1s
