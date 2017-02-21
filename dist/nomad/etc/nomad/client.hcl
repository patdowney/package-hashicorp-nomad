# client {
  # alloc_dir (string: "[data_dir]/alloc") - Specifies the directory to use for
  # allocation data. By default, this is the top-level data_dir suffixed with
  # "alloc", like "/opt/nomad/alloc". This must be an absolute path

  # chroot_env (ChrootEnv: nil) - Specifies a key-value mapping that defines
  # the chroot environment for jobs using the Exec and Java drivers.

  # enabled (bool: false) - Specifies if client mode is enabled. All other
  # client configuration options depend on this value.

  # max_kill_timeout (string: "30s") - Specifies the maximum amount of time a
  # job is allowed to wait to exit. Individual jobs may customize their own
  # kill timeout, but it may not exceed this value.

  # meta (map[string]string: nil) - Specifies a key-value map that annotates
  # with user-defined metadata.

  # network_interface (string: "lo | lo0") - Specifies the name of the
  # interface to force network fingerprinting on. This defaults to the loopback
  # interface.

  # network_speed (int: 0) - Specifies an override for the network link speed.
  # This value, if set, overrides any detected or defaulted link speed. Most
  # clients can determine their speed automatically, and thus in most cases
  # this should be left unset.

  # node_class (string: "") - Specifies an arbitrary string used to logically
  # group client nodes by user-defined class. This can be used during job
  # placement as a filter.

  # options (Options: nil) - Specifies a key-value mapping of internal
  # configuration for clients, such as for driver configuration.

  # reserved (Reserved: nil) - Specifies that Nomad should reserve a portion of
  # the node's resources from receiving tasks. This can be used to target a
  # certain capacity usage for the node. For example, 20% of the node's CPU
  # could be reserved to target a CPU utilization of 80%.

  # servers (array<string>: []) - Specifies an array of addresses to the Nomad
  # servers this client should join. This list is used to register the client
  # with the server nodes and advertise the available resources so that the
  # agent can receive work. This may be specified as an IP address or DNS, with
  # or without the port. If the port is omitted, the default port of 4647 is
  # used.

  # state_dir (string: "[data_dir]/client") - Specifies the directory to use to
  # store client state. By default, this is - the top-level data_dir suffixed
  # with "client", like "/opt/nomad/client". This must be an absolute path.

  # gc_interval (string: "1m") - Specifies the interval at which Nomad attempts
  # to garbage collect terminal allocation directories.

  # gc_disk_usage_threshold (float: 80) - Specifies the disk usage percent
  # which Nomad tries to maintain by garbage collecting terminal allocations.

  # gc_inode_usage_threshold (float: 70) - Specifies the inode usage percent
  # which Nomad tries to maintain by garbage collecting terminal allocations.
# }
