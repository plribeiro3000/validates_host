require "validates_host/version"
require "active_model"

module ValidatesHost
  autoload :HostNameValidator, 'validates_host/host_name_validator'
  autoload :DomainNameValidator, 'validates_host/domain_name_validator'
  autoload :IpValidator, 'validates_host/ip_validator'

  autoload :ShouldaMatchers, "validates_host/shoulda-matchers" if defined?(::Shoulda)
  autoload :Remarkable, "validates_host/remarkable" if defined?(::Remarkable)
end