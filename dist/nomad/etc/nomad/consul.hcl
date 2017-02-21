# consul {
  # address (string: "127.0.0.1:8500") - Specifies the address to the local
  # Consul agent, given in the format host:port.

  # auth (string: "") - Specifies the HTTP Basic Authentication information to
  # use for access to the Consul Agent, given in the format username:password.

  # auto_advertise (bool: true) - Specifies if Nomad should advertise its
  # services in Consul. The services are named according to server_service_name
  # and client_service_name. Nomad servers and clients advertise their
  # respective services, each tagged appropriately with either http or rpc tag.
  # Nomad servers also advertise a serf tagged service.

  # ca_file (string: "") - Specifies an optional path to the CA certificate
  # used for Consul communication. This defaults to the system bundle if
  # unspecified.

  # cert_file (string: "") - Specifies the path to the certificate used for
  # Consul communication. If this is set then you need to also set key_file.

  # checks_use_advertise (bool: false) - Specifies if Consul heath checks
  # should bind to the advertise address. By default, this is the bind address.

  # client_auto_join (bool: true) - Specifies if the Nomad clients should
  # automatically discover servers in the same region by searching for the
  # Consul service name defined in the server_service_name option. The search
  # occurs if the client is not registered with any servers or it is unable to
  # heartbeat to the leader of the region, in which case it may be partitioned
  # and searches for other servers.

  # client_service_name (string: "nomad-client") - Specifies the name of the
  # service in Consul for the Nomad clients.

  # key_file (string: "") - Specifies the path to the private key used for
  # Consul communication. If this is set then you need to also set cert_file.

  # server_service_name (string: "nomad") - Specifies the name of the service
  # in Consul for the Nomad servers.

  # server_auto_join (bool: true) - Specifies if the Nomad servers should
  # automatically discover and join other Nomad servers by searching for the
  # Consul service name defined in the server_service_name option. This search
  # only happens if the server does not have a leader.

  # ssl (bool: false) - Specifies if the transport scheme should use HTTPS to
  # communicate with the Consul agent.

  # token (string: "") - Specifies the token used to provide a per-request ACL
  # token. This option overrides the Consul Agent's default token.

  # verify_ssl (bool: true)- Specifies if SSL peer verification should be used
  # when communicating to the Consul API client over HTTPS
# }
