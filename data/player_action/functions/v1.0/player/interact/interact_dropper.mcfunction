
advancement revoke @s only player_action:v1/interact_dropper
execute if score @s player_action.dropper matches 1.. run function #player_action:v1/interact_dropper
execute if score @s player_action.dropper matches 1.. run scoreboard players set @s player_action.dropper 0
