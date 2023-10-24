load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# rules_xcodeproj

http_archive(
    name = "rules_xcodeproj",
    sha256 = "d16de271048004ea27f98d6fefcb02214337920617a2678f58e8458980243a5f",
    url = "https://github.com/MobileNativeFoundation/rules_xcodeproj/releases/download/1.12.1/release.tar.gz",
)

load(
    "@rules_xcodeproj//xcodeproj:repositories.bzl",
    "xcodeproj_rules_dependencies",
)

xcodeproj_rules_dependencies()

load("@bazel_features//:deps.bzl", "bazel_features_deps")

bazel_features_deps()

# iOS/macOS

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

# Buildifier

http_archive(
    name = "buildifier_prebuilt",
    sha256 = "f7093a960a8c3471552764892ce12cb62d9b72600fa4c8b08b2090c45db05ce8",
    strip_prefix = "buildifier-prebuilt-6.0.0.1",
    urls = [
        "http://github.com/keith/buildifier-prebuilt/archive/6.0.0.1.tar.gz",
    ],
)

load("@buildifier_prebuilt//:deps.bzl", "buildifier_prebuilt_deps")

buildifier_prebuilt_deps()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load("@buildifier_prebuilt//:defs.bzl", "buildifier_prebuilt_register_toolchains")

buildifier_prebuilt_register_toolchains()

# Swiftlint

http_archive(
    name = "SwiftLint",
    build_file_content = """
load("@bazel_skylib//rules:native_binary.bzl", "native_binary")

native_binary(
    name = "swiftlint",
    src = "bin/swiftlint",
    out = "swiftlint",
    visibility = ["//visibility:public"],
)
""",
    sha256 = "abe7c0bb505d26c232b565c3b1b4a01a8d1a38d86846e788c4d02f0b1042a904",
    strip_prefix = "SwiftLintBinary.artifactbundle/swiftlint-0.50.3-macos",
    url = "https://github.com/realm/SwiftLint/releases/download/0.50.3/SwiftLintBinary-macos.artifactbundle.zip",
)
