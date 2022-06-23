# This handles all calls when an archery scoreboard objective is triggered (e.g., when the target block is hit)

# Determine if a target has been hit, and if so, add it to the total score
execute as @a if score @s WS.Archery.Target > WS.Archery WS.Archery.Target run scoreboard players operation @s WS.Archery.Target += @s WS.Archery.Score
execute as @a if score @s WS.Archery.Target > WS.Archery WS.Archery.Target unless score WS.Archery.Shot WS.Archery.Shot > WS.Archery.Shot.Max WS.Archery run scoreboard players add WS.Archery.Shot WS.Archery.Shot 1
execute as @a if score @s WS.Archery.Target > WS.Archery WS.Archery.Target run title @s title {"score": {"objective": "WS.Archery.Target", "name": "@s"},"color": "gold"}
execute as @a if score @s WS.Archery.Target > WS.Archery WS.Archery.Target run scoreboard players set @s WS.Archery.Target 0

# If three shots has been reached, head to the next round
execute if score WS.Archery.Shot WS.Archery.Shot > WS.Archery.Shot.Max WS.Archery if score WS.Archery.Round WS.Archery.Round matches 1 run function ws_datapack:archery/end_round_1
execute if score WS.Archery.Shot WS.Archery.Shot > WS.Archery.Shot.Max WS.Archery if score WS.Archery.Round WS.Archery.Round matches 2 run function ws_datapack:archery/end_round_2
execute if score WS.Archery.Shot WS.Archery.Shot > WS.Archery.Shot.Max WS.Archery if score WS.Archery.Round WS.Archery.Round matches 3 run function ws_datapack:archery/end
