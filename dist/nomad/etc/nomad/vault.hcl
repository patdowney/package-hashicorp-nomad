# vault {
  # address - (string: "https://vault.service.consul:8200") - Specifies the
  # address to the Vault server. This must include the protocol, host/ip, and
  # port given in the format protocol://host:port. If your Vault installation
  # is behind a load balancer, this should be the address of the load balancer.

  # allow_unauthenticated (bool: true) - Specifies if users submitting jobs to
  # the Nomad server should be required to provide their own Vault token,
  # proving they have access to the policies listed in the job. This option
  # should be disabled in an untrusted environment.

  # enabled (bool: false) - Specifies if the Vault integration should be
  # activated.

  # create_from_role (string: "") - Specifies the role to create tokens from.
  # The token given to Nomad does not have to be created from this role but
  # must have "update" capability on "auth/token/create/" path in Vault. If
  # this value is unset and the token is created from a role, the value is
  # defaulted to the role the token is from. This is largely for backwards
  # compatibility. It is recommended to set the create_from_role field if Nomad
  # is deriving child tokens from a role.

  # task_token_ttl (string: "") - Specifies the TTL of created tokens when
  # using a root token. This is specified using a label suffix like "30s" or
  # "1h".

  # ca_file (string: "") - Specifies an optional path to the CA certificate
  # used for Vault communication. If unspecified, this will fallback to the
  # default system CA bundle, which varies by OS and version.

  # ca_path (string: "") - Specifies an optional path to a folder containing CA
  # certificates to be used for Vault communication. If unspecified, this will
  # fallback to the default system CA bundle, which varies by OS and version.

  # cert_file (string: "") - Specifies the path to the certificate used for
  # Vault communication. If this is set then you need to also set tls_key_file.

  # key_file (string: "") - Specifies the path to the private key used for
  # Vault communication. If this is set then you need to also set tls_cert_file.

  # tls_server_name (string: "") - Specifies an optional string used to set the
  # SNI host when connecting to Vault via TLS.

  # tls_skip_verify (bool: false) - Specifies if SSL peer validation should be
  # enforced.
  #
  # NOTE: It is strongly discouraged to disable SSL verification. Instead, you
  # should install a custom CA bundle and validate against it. Disabling SSL
  # verification can allow an attacker to easily compromise your cluster.


  # token (string: "") - Specifies the parent Vault token to use to derive
  # child tokens for jobs requesting tokens. Visit the Vault Integration
  # documentation to see how to generate an appropriate token in Vault.
  #
  # NOTE: It is strongly discouraged to place the token as a configuration
  # parameter like this, since the token could be checked into source control
  # accidentally. Users should set the VAULT_TOKEN environment variable when
  # starting the agent instead.
# }
