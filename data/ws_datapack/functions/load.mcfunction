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

scoreboard objectives add WS.Menu trigger "WS Datapack Menu"
scoreboard objectives add WS.Setup trigger "WS Datapack Setup"
execute unless score WS.Setup WS.Setup matches 1 run function ws_datapack:setup/start_setup
scoreboard objectives add WS.Config trigger "WS Datapack Config"
scoreboard objectives add WS.Game trigger "WS Game Selector"

# LanternLoad requirements
schedule function ws_datapack:tick 1t
# Bump version here when a major version is released
scoreboard players set ws_datapack load.status 1
# TODO: (at some point) use a system to detect dependencies if used, or conflicting datapacks
