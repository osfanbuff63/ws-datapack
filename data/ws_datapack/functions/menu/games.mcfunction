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

# Game selector tellraw
# Add games to this as they are created.
# It literally just runs /trigger WS.Game :P
tellraw @s [{"text": "----------- ","color": "red"},{"text": "WS Datapack Game Selector","color": "yellow","bold": true},{"text": "----------- ","color": "red"},{"text": "Click on a game to select it!","color": "gold"},"\n",{"text": "Archery","color": "dark_aqua","bold": true,"hoverEvent": {"action": "show_text","contents": {"text": "Start Archery!","color": "green"}},"clickEvent": {"action": "run_command","value": "/trigger WS.Game set 1"}}]
