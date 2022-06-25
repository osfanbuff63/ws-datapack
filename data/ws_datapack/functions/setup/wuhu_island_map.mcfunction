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

tellraw @s [{"text": "This datapack supports Tizona's Wuhu Island map. Would you like to enable support for it?","color": "gold"},"\n","\n",{"text": "The reason you may want to use this is so that you can play the sports on the map recreated inside of Minecraft, and the datapack will then use coordinates for said map. If you aren't using it right now, you can either:","color": "gold"},"\n",{"text": "- Download it from ","color": "gold"},{"text": "here","color": "gold","bold": true,"clickEvent": {"action": "open_url","value": "https://www.planetminecraft.com/project/wuhu-island---wii-sport-resort-island/"}},"\n",{"text": "- Continue on. This will make the experience not as good, and when you start a sport the sport area will be placed at your location. However, when this option is disabled, you can run /trigger WS.SportLocation set <id> to set the location for a sport. The ID will be shown for each sport in the menu.","color": "gold"},"\n","\n",{"text": "Enable","color": "green","bold": true,"hoverEvent": {"action": "show_text","contents": {"text": "Enable support for the Wuhu Island map","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger WS.Config set 2"}},{"text": "           Disable","color": "dark_red","bold": true,"hoverEvent": {"action": "show_text","contents": {"text": "Disable the Wuhu Island map","color": "red"}}}]