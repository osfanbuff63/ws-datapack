# Handles all things related to config, besides the base trigger

# Wuhu island map
execute as @a if score @s WS.Config matches 2 run tellraw @s [{"text": "The Wuhu Island map has been toggled","color": "gold"},{"text": " on!","color": "green"}]
execute as @a if score @s WS.Config matches 2 run scoreboard players set WS.Island WS.Config 1
execute as @a if score @s WS.Config matches 2 if score WS.Setup WS.Setup matches 0 run function ws_datapack:setup/wuhu_island_map

execute as @a if score @s WS.Config matches 3 run tellraw @s [{"text": "The Wuhu Island map has been toggled","color": "gold"},{"text": " off!","color": "red"}]
execute as @a if score @s WS.Config matches 3 run scoreboard players set WS.Island WS.Config 0
execute as @a if score @s WS.Config matches 3 if score WS.Setup WS.Setup matches 0 run function ws_datapack:setup/wuhu_island_map

# Remove scoreboard value (*must be kept at the end of file*)
scoreboard players set @s WS.Config 0
