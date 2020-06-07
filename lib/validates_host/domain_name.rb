# frozen_string_literal: true

module ValidatesHost
  class DomainName
    def initialize(domain_name)
      @domain_name = domain_name
    end

    def valid?
      return true if @domain_name.blank?

      @domain_name =~ %r{^[a-z0-9]+([\-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(/.*)?$}
    end
  end
end
