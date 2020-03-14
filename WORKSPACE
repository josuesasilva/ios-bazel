
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "build_bazel_rules_apple",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    tag = '0.19.0',
)

git_repository(
    name = "build_bazel_rules_swift",
    remote = "https://github.com/bazelbuild/rules_swift.git",
    tag = '0.13.0',
)

git_repository(
    name = "build_bazel_apple_support",
    remote = "https://github.com/bazelbuild/apple_support.git",
    tag = '0.7.2',
)

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
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

git_repository(
    name = "bazel_skylib",
    remote = "https://github.com/bazelbuild/bazel-skylib.git",
    tag = "1.0.2",
)

load(
    "@bazel_tools//tools/build_defs/repo:http.bzl", 
    "http_archive"
)

http_archive(
    name = "rules_pods",
    urls = ["https://github.com/pinterest/PodToBUILD/releases/download/0.25.2-fc71a0b/PodToBUILD.zip"],
)

load(
    "@com_google_protobuf//:protobuf_deps.bzl",
    "protobuf_deps",
)

protobuf_deps()

load(
    "@rules_pods//BazelExtensions:workspace.bzl",
    "new_pod_repository"
)

git_repository(
    name = "com_github_thii_rules_apple_extras",
    remote = "https://github.com/thii/rules_apple_extras.git",
    commit = "5d310fe7e51be6b488fe25e014ea5dfaf115a519",
)

