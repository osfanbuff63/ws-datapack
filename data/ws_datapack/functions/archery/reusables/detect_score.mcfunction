# WS Datapack
# Copyright (C) 2022 osfanbuff63
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Reusable for detecting the score and adding it
# This is used by the tick file for archery, and so is run around 20 times a second

execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power1 run scoreboard players add @s WS.Archery.Score 1
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power2 run scoreboard players add @s WS.Archery.Score 2
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power3 run scoreboard players add @s WS.Archery.Score 3
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power4 run scoreboard players add @s WS.Archery.Score 4
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power5 run scoreboard players add @s WS.Archery.Score 5
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power6 run scoreboard players add @s WS.Archery.Score 6
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power7 run scoreboard players add @s WS.Archery.Score 7
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power8 run scoreboard players add @s WS.Archery.Score 8
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power9 run scoreboard players add @s WS.Archery.Score 9
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power10 run scoreboard players add @s WS.Archery.Score 10
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power11 run scoreboard players add @s WS.Archery.Score 11
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power12 run scoreboard players add @s WS.Archery.Score 12
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power13 run scoreboard players add @s WS.Archery.Score 13
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power14 run scoreboard players add @s WS.Archery.Score 14
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power15 run scoreboard players add @s WS.Archery.Score 15

# And show a title
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power1 run title @s title {"text": "1","color": "dark_blue"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power2 run title @s title {"text": "2","color": "dark_blue"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power3 run title @s title {"text": "3","color": "dark_blue"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power4 run title @s title {"text": "4","color": "dark_blue"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power5 run title @s title {"text": "5","color": "blue"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power6 run title @s title {"text": "6","color": "blue"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power7 run title @s title {"text": "7","color": "blue"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power8 run title @s title {"text": "8","color": "blue"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power9 run title @s title {"text": "9","color": "dark_green"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power10 run title @s title {"text": "10","color": "dark_green"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power11 run title @s title {"text": "11","color": "dark_green"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power12 run title @s title {"text": "12","color": "green"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power13 run title @s title {"text": "13","color": "green"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power14 run title @s title {"text": "14","color": "green"}
execute if score @s WS.Archery.Target > WS.Archery WS.Archery.Target if predicate ws_datapack:archery/power15 run title @s title {"text": "15","color": "gold"}
