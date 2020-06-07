#!/bin/bash

set -eo pipefail

xcodebuild -project FizzBuzz.xcodeproj \
            -scheme FizzBuzz \
            -destination platform=iOS\ Simulator,OS=13.5,name=iPhone\ 11 \
            clean test | xcpretty