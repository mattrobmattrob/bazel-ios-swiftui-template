#!/bin/bash
set -e
echo "Selecting Xcode for environment"

printenv

sudo xcode-select -p
sudo xcode-select -s /Applications/Xcode_16.2.app

echo "Printing available simulators"

xcrun simctl list devices

echo "Generating bazelrc"

# Enable remote cache for all Github Action builds
echo "build --config=remote_cache" > user.bazelrc
echo "build --config=ci" >> user.bazelrc
echo "build --remote_header=x-buildbuddy-api-key=$BUILDBUDDY_API_KEY" >> user.bazelrc
