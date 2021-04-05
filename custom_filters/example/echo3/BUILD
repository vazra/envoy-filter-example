package(default_visibility = ["//visibility:public"])

load(
    "@envoy//bazel:envoy_build_system.bzl",
    "envoy_cc_library",
    "envoy_cc_test",
)

envoy_cc_library(
    name = "echo3_lib",
    srcs = ["echo3.cc"],
    hdrs = ["echo3.h"],
    repository = "@envoy",
    deps = [
        "@envoy//include/envoy/buffer:buffer_interface",
        "@envoy//include/envoy/network:connection_interface",
        "@envoy//include/envoy/network:filter_interface",
        "@envoy//source/common/common:assert_lib",
        "@envoy//source/common/common:logger_lib",
    ],
)

envoy_cc_library(
    name = "echo3_config",
    srcs = ["echo3_config.cc"],
    repository = "@envoy",
    deps = [
        ":echo3_lib",
        "@envoy//include/envoy/network:filter_interface",
        "@envoy//include/envoy/registry:registry",
        "@envoy//include/envoy/server:filter_config_interface",
    ],
)

envoy_cc_test(
    name = "echo3_integration_test",
    srcs = ["echo3_integration_test.cc"],
    data =  ["echo3_server.yaml"],
    repository = "@envoy",
    deps = [
        ":echo3_config",
        "@envoy//test/integration:integration_lib"
    ],
)

sh_test(
    name = "envoy_binary_test",
    srcs = ["envoy_binary_test.sh"],
    data = [":envoy"],
)
