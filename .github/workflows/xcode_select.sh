#!/bin/bash
set -e
echo "Selecting Xcode for environment"

printenv

sudo xcode-select -p
sudo xcode-select -s /Applications/Xcode_15.2.app

echo "Generating bazelrc"

# Enable remote cache for all Github Action builds
echo "build --config=remote_cache" > user.bazelrc
echo "build --config=ci" >> user.bazelrc
