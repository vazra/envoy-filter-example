load(
    "//bazel:envoy_build_system.bzl",
    "envoy_cc_extension",
    "envoy_cc_library",
    "envoy_extension_package",
)

licenses(["notice"])  # Apache 2

# Echo L4 network filter. This is primarily a simplistic example.
# Public docs: docs/root/configuration/network_filters/echo_filter.rst

envoy_extension_package()

envoy_cc_library(
    name = "echo",
    srcs = ["echo.cc"],
    hdrs = ["echo.h"],
    deps = [
        "@envoy//include/envoy/buffer:buffer_interface",
        "@envoy//include/envoy/network:connection_interface",
        "@envoy//include/envoy/network:filter_interface",
        "@envoy//source/common/common:assert_lib",
        "@envoy//source/common/common:minimal_logger_lib",
    ],
)

envoy_cc_extension(
    name = "config",
    srcs = ["config.cc"],
    # TODO(#9953) move echo integration test to extensions.
    extra_visibility = [
        "//test/integration:__subpackages__",
    ],
    security_posture = "unknown",
    deps = [
        ":echo",
        "@envoy//include/envoy/registry",
        "@envoy//include/envoy/server:filter_config_interface",
        "@envoy//source/extensions/filters/network:well_known_names",
        "@envoy//source/extensions/filters/network/common:factory_base_lib",
        "@envoy_api//envoy/extensions/filters/network/echo/v3:pkg_cc_proto",
    ],
)
