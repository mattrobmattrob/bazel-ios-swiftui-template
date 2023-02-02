# SwiftUI iOS App with Bazel

This is an iOS application written in SwiftUI and built via Bazel. This is a starting place similar to creating a new project in Xcode and choosing SwiftUI as the starting place.

## Getting Started

Install Bazelisk via `brew install bazelisk`. `bazel` & `bazelisk` will now use the `.bazelversion` file to download and run the chosen Bazel version.

### Generate/Open Project

```bash
$ bazel run :xcodeproj
$ open App.xcodeproj
```

### Build Application (CLI)

```bash
$ bazel build //app
```

### Run All Tests (CLI)

```bash
$ bazel test $(bazel query 'kind(ios_unit_test,//...)')
```

## Underlying Tools

- [`rules_apple`](https://github.com/bazelbuild/rules_apple)
- [`rules_swift`](https://github.com/bazelbuild/rules_swift)
- [`rules_xcodeproj`](https://github.com/buildbuddy-io/rules_xcodeproj)

## Making It Your Own

`tools/shared.bzl` contains a handful of definitions to define the name of the application, bundle identifier, and similar things. Update these values to change the application's name.
