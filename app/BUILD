load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

package(
    default_visibility = ["//visibility:public"]
)

ios_application(
    name = "BazelAppSwift",
    bundle_id = "com.bazel.app",
    families = ["iphone"],
    infoplists = ["Info.plist"],
    frameworks = [],
    deps = [":SwiftLib"],
    resources = [
        "LaunchScreen.storyboard",
        "Main.storyboard",
        "main.jsbundle",
    ],
    sdk_frameworks = ["JavaScriptCore"],
    minimum_os_version = "10.0"
)

swift_library(
    name = "SwiftLib",
    srcs = glob(["*.swift"]),
    swiftc_inputs = ["Bridging-Header.h"],
    copts = [
        "-Xwrapped-swift=-debug-prefix-pwd-is-dot",
        "-Xfrontend",
        "-no-clang-module-breadcrumbs"
    ],
    deps = [':ObjcLib'],
)

objc_library(
    name = "ObjcLib",
    srcs = ["RNView.m"],
    hdrs = ["RNView.h"],
    deps = ['//react:ReactLib'],
)
