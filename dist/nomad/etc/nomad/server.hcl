server {
  # bootstrap_expect (int: required) - Specifies the number of server nodes to
  # wait for before bootstrapping. It is most common to use the odd-numbered
  # integers 3 or 5 for this value, depending on the cluster size. A value of
  # 1 does not provide any fault tolerance and is not recommended for
  # production use cases.
  bootstrap_expect = 1

  # data_dir (string: "[data_dir]/server") - Specifies the directory to use -
  # for server-specific data, including the replicated log. By default, this
  # is - the top-level data_dir suffixed with "server",
  # like "/opt/nomad/server". This must be an absolute path.
  data_dir = "/var/lib/nomad"

  # enabled (bool: false) - Specifies if this agent should run in server mode.
  # All other server options depend on this value being set.

  # enabled_schedulers (array<string>: [all]) - Specifies which sub-schedulers
  # this server will handle. This can be used to restrict the evaluations that
  # worker threads will dequeue for processing.

  # encrypt (string: "") - Specifies the secret key to use for encryption of
  # Nomad server's gossip network traffic. This key must be 16-bytes that are
  # base64-encoded. The provided key is automatically persisted to the data
  # directory and loaded automatically whenever the agent is restarted. This
  # means that to encrypt Nomad server's gossip protocol, this option only
  # needs to be provided once on each agent's initial startup sequence. If it
  # is provided after Nomad has been initialized with an encryption key, then
  # the provided key is ignored and a warning will be displayed. See the Nomad
  # encryption documentation for more details on this option and its impact on
  # the cluster.

  # node_gc_threshold (string: "24h") - Specifies how long a node must be in a
  # terminal state before it is garbage collected and purged from the system.
  # This is specified using a label suffix like "30s" or "1h".

  # num_schedulers (int: [num-cores]) - Specifies the number of parallel
  # scheduler threads to run. This can be as many as one per core, or 0 to
  # disallow this server from making any scheduling decisions. This defaults to
  # the number of CPU cores.

  # protocol_version (int: 1) - Specifies the Nomad protocol version to use
  # when communicating with other Nomad servers. This value is typically not
  # required as the agent internally knows the latest version, but may be
  # useful in some upgrade scenarios.

  # rejoin_after_leave (bool: false) - Specifies if Nomad will ignore a
  # previous leave and attempt to rejoin the cluster when starting. By default,
  # Nomad treats leave as a permanent intent and does not attempt to join the
  # cluster again when starting. This flag allows the previous state to be
  # used to rejoin the cluster.

  # retry_join (array<string>: []) - Specifies a list of server addresses to
  # retry joining if the first attempt fails. This is similar to start_join,
  # but only invokes if the initial join attempt fails. The list of addresses
  # will be tried in the order specified, until one succeeds. After one
  # succeeds, no further addresses will be contacted. This is useful for cases
  # where we know the address will become available eventually. Use retry_join
  # with an array as a replacement for start_join, do not use both options. See
  # the server address format section for more information on the format of the
  # string.

  # retry_interval (string: "30s") - Specifies the time to wait between retry
  # join attempts.

  # retry_max (int: 0) - Specifies the maximum number of join attempts to be
  # made before exiting with a return code of 1. By default, this is set to 0
  # which is interpreted as infinite retries.

  # start_join (array<string>: []) - Specifies a list of server addresses to
  # join on startup. If Nomad is unable to join with any of the specified
  # addresses, agent startup will fail. See the server address format section
  # for more information on the format of the string.

}
