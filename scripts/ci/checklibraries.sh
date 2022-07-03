#!/usr/bin/bash

# WS Datapack CI Build Check by osfanbuff63 and contributors
# Licensed under the MIT License

# This checks to make sure the required libraries are included in the datapack
# Mostly a protective test.
# The repo must be cloned beforehand, in our case using actions/checkout.
# It also must be moved to the root directory, or fetched on its own using cuRL or wget.

which ./data/load
if $? != 0; then
  echo "Could not find LanternLoad."
  exit 1
fi
which ./data/block_utils
if $? != 0; then
  echo "Could not find BlockUtils."
  exit 2
fi
which ./data/player_action
if $? != 0; then
  echo "Could not find PlayerAction."
  exit 3
else
  echo "Test complete, all dependencies found."
  exit 0
fi
