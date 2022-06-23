title @a title {"text": "End of Round 1!","color": "green"}
execute as @a run scoreboard players set @s WS.Archery.Shot 1
scoreboard players set WS.Archery.Round WS.Archery.Round 2

# TODO: tellraw for current scores
# TODO: tp to next location or place next location