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

execute unless score WS.Setup WS.Setup matches 1 run tellraw @s [{"text": "Hello","color": "gold" },{"selector": "@s","color":"yellow"},{"text":"! Welcome to the WS Datapack Setup! I'll guide you through setting this up. All options that you set now can be configured later via /trigger WS.Config. Press the right arrow below to continue..."},"\n",{"text": " >>> Continue","color": "gold","hoverEvent": {"action": "show_text","value": {"text": "Click me to continue!","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger WS.Setup set 2"}}]
scoreboard players set @s WS.Setup 0
execute if score WS.Setup WS.Setup matches 1 run tellraw @s [{"text": "You've already set this datapack up! You can run /function #ws_datapack:uninstall to delete all settings and set up again, but this is not recommended.","color": "gold"}]