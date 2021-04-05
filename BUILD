package(default_visibility = ["//visibility:public"])

load(
    "@envoy//bazel:envoy_build_system.bzl",
    "envoy_cc_binary",
)

envoy_cc_binary(
    name = "envoy",
    repository = "@envoy",
    deps = [
        "//custom_filters/example/echo3:echo3_config",
        "//custom_filters/example/echo2:echo2_config",
        # "//custom_filters/example/http-filter-example:http_filter_config",
        "@envoy//source/exe:envoy_main_entry_lib",
    ],
)



