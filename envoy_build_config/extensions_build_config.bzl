# Official envoy extensions used in datafi-edge-server

EXTENSIONS = {
    #
    # For MySQL Connector
    #
    "envoy.filters.network.mysql_proxy":                "@envoy//source/extensions/filters/network/mysql_proxy:config",
    "envoy.filters.network.rbac":                       "@envoy//source/extensions/filters/network/rbac:config",
    "envoy.filters.network.tcp_proxy":                  "@envoy//source/extensions/filters/network/tcp_proxy:config",
    "envoy.upstreams.http.tcp":                         "@envoy//source/extensions/upstreams/http/tcp:config",
    "envoy.transport_sockets.raw_buffer":               "@envoy//source/extensions/transport_sockets/raw_buffer:config",

# other
    "envoy.access_loggers.stream":                      "//source/extensions/access_loggers/stream:config",
    "envoy.filters.network.http_connection_manager":    "//source/extensions/filters/network/http_connection_manager:config",
    "envoy.filters.http.router":                        "//source/extensions/filters/http/router:config",
    "envoy.filters.listener.tls_inspector":             "//source/extensions/filters/listener/tls_inspector:config",


    #
    # Transport sockets
    #

    "envoy.transport_sockets.alts":                     "//source/extensions/transport_sockets/alts:config",
    "envoy.transport_sockets.upstream_proxy_protocol":  "//source/extensions/transport_sockets/proxy_protocol:upstream_config",
    "envoy.transport_sockets.raw_buffer":               "//source/extensions/transport_sockets/raw_buffer:config",
    "envoy.transport_sockets.tap":                      "//source/extensions/transport_sockets/tap:config",
    "envoy.transport_sockets.starttls":                 "//source/extensions/transport_sockets/starttls:config",


    #
    # Common
    #
    # "envoy.access_loggers.stdoutput":                   "@envoy//source/extensions/access_loggers/stdoutput:config"
}

EXTENSION_CONFIG_VISIBILITY = ["//:extension_config"]
EXTENSION_PACKAGE_VISIBILITY = ["//:extension_library"]
