#!/bin/bash
set -e
echo "Selecting Xcode for environment"

printenv

sudo xcode-select -p
sudo xcode-select -s /Applications/Xcode_16.2.app

echo "Printing available simulators"

xcrun simctl list devices

echo "[TEMP] CREATE SIMS"

xcrun simctl create 'MR_TEST_iPhone 16_18.2' 'iPhone 16' 'com.apple.CoreSimulator.SimRuntime.iOS-18-2'

echo "Generating bazelrc"

# Enable remote cache for all Github Action builds
echo "build --config=remote_cache" > user.bazelrc
echo "build --config=ci" >> user.bazelrc
echo "build --remote_header=x-buildbuddy-api-key=$BUILDBUDDY_API_KEY" >> user.bazelrc
