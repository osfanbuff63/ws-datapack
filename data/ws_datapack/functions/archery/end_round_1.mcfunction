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

title @a title {"text": "End of Round 1!","color": "green"}
execute as @a run scoreboard players set @s WS.Archery.Shot 1
scoreboard players set WS.Archery.Round WS.Archery.Round 2
# TODO: tellraw for current scores
#execute if score WS.Island WS.Config matches 1 run tp coords
execute if score WS.Island WS.Config matches 0 run tellraw @a {"text": "Placing shot number 2 in 5 seconds!","color": "gold"}
execute as @a[sort=random,limit=1] if score WS.Island WS.Config matches 0 run schedule function ws_datapack:archery/place_2 5s