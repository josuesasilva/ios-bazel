package(
    default_visibility = ["//visibility:public"],
)

objc_import(
    name = 'ReactLib',
    hdrs = glob(["headers/**/*.h"]),
    alwayslink = True,
    includes = ["headers"],
    archives = glob(["libs/**/*.a"]),
)
