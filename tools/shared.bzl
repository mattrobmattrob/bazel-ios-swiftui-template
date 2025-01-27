app_info = struct(
    bundle_name = "SwiftUIApp",
    bundle_id = "com.example.SwiftUIApp",
    executable_name = "SwiftUIAppBinary",
)

versions = struct(
    minimum_ios_version = "18.0",
)

default_test_runner = Label("@build_bazel_rules_apple//apple/testing/default_runner:ios_xctestrun_random_runner")
