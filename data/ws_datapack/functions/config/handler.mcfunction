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
