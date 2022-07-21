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

# LanternLoad requirements
schedule function ws_datapack:tick 1t
schedule function ws_datapack:archery/tick 1t

# Menu trigger
execute as @a if score @s WS.Menu matches 1 run function ws_datapack:menu
execute as @a run scoreboard players enable @s WS.Menu

# Setup-related triggers
execute as @a if score @s WS.Setup matches 1 run function ws_datapack:setup/start_setup 
execute as @a if score @s WS.Setup matches 2 run function ws_datapack:setup/wuhu_island_map 
execute as @a unless score WS.Setup WS.Setup matches 1 run scoreboard players enable @s WS.Setup

# Config triggers
execute as @a if score @s WS.Config matches 1 run function ws_datapack:config/menu 
execute as @a if score @s WS.Config matches 2 run function ws_datapack:config/handler 

# These only run once
execute as @a if score @s WS.Game matches 1 if score WS.Island WS.Config matches 0 unless score WS.Game WS.Game matches 1 run function ws_datapack:archery/place_1
execute as @a if score @s WS.Game matches 1 unless score WS.Game WS.Game matches 1 run function ws_datapack:archery/load 
