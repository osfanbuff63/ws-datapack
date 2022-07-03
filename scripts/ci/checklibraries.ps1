# WS Datapack CI Build Check by osfanbuff63 and contributors
# Licensed under the MIT License

# This checks to make sure the required libraries are included in the datapack
# Mostly a protective test.
# The repo must be cloned beforehand, in our case using actions/checkout.
# It also must be moved to the root directory, or fetched on its own using cuRL or the like.

debug=1
function off {
}

where "%CD%\data\load"
where "%CD%\data\block_utils"
where "%CD%\data\player_action"
