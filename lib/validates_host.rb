require "validates_host/version"
require "active_model"

module ValidatesHost
  autoload :HostValidator, 'validates_host/host_validator'
  autoload :DomainValidator, 'validates_host/domain_validator'
  autoload :IpValidator, 'validates_host/ip_validator'
  autoload :Host, 'validates_host/host'
  autoload :Domain, 'validates_host/domain'
  autoload :Ip, 'validates_host/ip'
end