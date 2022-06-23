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