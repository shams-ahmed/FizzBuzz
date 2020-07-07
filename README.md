![Test](https://github.com/andrewmarmion/FizzBuzz/workflows/Test/badge.svg) [![Build Status](https://app.bitrise.io/app/77825e6be2e08797/status.svg?token=5ifzfecG7m1SbfCz9cKtHQ&branch=master)](https://app.bitrise.io/app/77825e6be2e08797) [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=andrewmarmion_FizzBuzz&metric=alert_status)](https://sonarcloud.io/dashboard?id=andrewmarmion_FizzBuzz)

# FizzBuzz

A sample app that utilizes Bitrise and GitHub Actions.  

There are three workflows on Bitrise. Deploy, test and documentation.

It now has SonarCloud integration. 

## GitHub Actions 

The following actions are triggered on a PR.

- Tests
- SwiftLint

## External Actions

The following are triggered on a PR.

- A Bitrise workflow that runs the unit tests.
- A SonarCloud integration that checks for code issues.
