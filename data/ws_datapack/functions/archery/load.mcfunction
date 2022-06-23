# TODO: difficulty selector
scoreboard objectives add WS.Archery.Target minecraft.custom:minecraft.target_hit
scoreboard objectives add WS.Archery.Score dummy
execute as @a store result score @s WS.Archery.Score run scoreboard players set @s WS.Archery.Target 0
execute as @a run scoreboard players set @s WS.Game 0
# execute if score WS.Island WS.Config matches 1 as @a run tp coords
scoreboard players set WS.Archery WS.Archery.Target 0
scoreboard objectives add WS.Archery.Shot dummy
scoreboard objectives add WS.Archery.Round dummy
scoreboard players set WS.Archery.Shot WS.Archery.Shot 1
scoreboard players set WS.Archery.Round WS.Archery.Round 1
scoreboard players set WS.Archery.Shot.Max WS.Archery.Shot 3