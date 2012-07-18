require 'uri/http'

module ValidatesHost
  class Domain
    def initialize(domain)
      @domain = domain
    end

    def valid?
      return true if @domain.blank?
      begin
        URI.parse(@domain).kind_of?(URI::HTTP)
      rescue URI::InvalidURIError
        false
      end
    end

    def domain
      @domain
    end
  end
end