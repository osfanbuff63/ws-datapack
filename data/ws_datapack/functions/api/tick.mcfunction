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

# This will handle all API calls, when the API is enabled (which is it by default).
# TODO: Make the different API calls and document them in /docs/ and in comments.
execute if score WS.API WS.Config matches 1 as @a[tag=spam] run tellraw @s "This is a temporary command! Run `/tag @s remove spam` if you see this!"