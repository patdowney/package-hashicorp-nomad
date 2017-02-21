# tls {
  # ca_file (string: "") - Specifies the path to the CA certificate to use for
  # Nomad's TLS communication.

  # cert_file (string: "") - Specifies the path to the certificate file used
  # for Nomad's TLS communication.

  # key_file (string: "") - Specifies the path to the key file to use for
  # Nomad's TLS communication.

  # http (bool: false) - Specifies if TLS should be enabled on the HTTP
  # endpoints on the Nomad agent, including the API.

  # rpc (bool: false) - Specifies if TLS should be enabled on the RPC
  # endpoints and Raft traffic between the Nomad servers. Enabling this on a
  # Nomad client makes the client use TLS for making RPC requests to the Nomad
  # servers.

  # verify_server_hostname (bool: false) - Specifies if outgoing TLS
  # connections should verify the server's hostname.
# }
