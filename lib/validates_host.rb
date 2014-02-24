require 'active_support/core_ext/array/wrap'
require 'validates_host/host_name_validator'
require 'validates_host/domain_name_validator'
require 'validates_host/ip_validator'
require 'validates_host/subnet_validator'

if defined?(::Shoulda)
  require 'validates_host/require_a_valid_domain_name_matcher'
  require 'validates_host/require_a_valid_host_name_matcher'
  require 'validates_host/require_a_valid_ip_matcher'
  require 'validates_host/require_a_valid_subnet_matcher'
end

module ValidatesHost
  autoload :Subnet, 'validates_host/subnet'
  autoload :Ip, 'validates_host/ip'
  autoload :HostName, 'validates_host/host_name'
  autoload :DomainName, 'validates_host/domain_name'
end