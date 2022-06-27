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

# This handles all calls when an archery scoreboard objective is triggered (e.g., when the target block is hit)

# Determine if a target has been hit, and if so, decide how many redstone power the target block has obtained and add that number to the total score. 
# Has to be done individually for every possible power (1-15)
# So we end up with 15 commands, and it has to be detected twice in this function.
# Potentially move into its own function at some point?
execute if score WS.Game WS.Game matches 1 run function ws_datapack:archery/reusables/detect_score

# Add a shot to the total count for this stage
# TODO: This needs to be changed to be player-based for #6 to work
execute as @a if score @s WS.Archery.Target > WS.Archery WS.Archery.Target unless score WS.Archery.Shot WS.Archery.Shot > WS.Archery.Shot.Max WS.Archery.Shot run scoreboard players add WS.Archery.Shot WS.Archery.Shot 1
execute as @a if score @s WS.Archery.Target > WS.Archery WS.Archery.Target run scoreboard players set @s WS.Archery.Target 0

# If three shots has been reached, head to the next stage
execute if score WS.Archery.Shot WS.Archery.Shot > WS.Archery.Shot.Max WS.Archery if score WS.Archery.Round WS.Archery.Round matches 1 run function ws_datapack:archery/end_stage_1
execute if score WS.Archery.Shot WS.Archery.Shot > WS.Archery.Shot.Max WS.Archery if score WS.Archery.Round WS.Archery.Round matches 2 run function ws_datapack:archery/end_stage_2
execute if score WS.Archery.Shot WS.Archery.Shot > WS.Archery.Shot.Max WS.Archery if score WS.Archery.Round WS.Archery.Round matches 3 run function ws_datapack:archery/end_stage_3
execute if score WS.Archery.Shot WS.Archery.Shot > WS.Archery.Shot.Max WS.Archery if score WS.Archery.Round WS.Archery.Round matches 4 run function ws_datapack:archery/end
