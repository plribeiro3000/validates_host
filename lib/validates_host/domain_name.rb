module ValidatesHost
  class DomainName
    def initialize(domain_name)
      @domain_name = domain_name
    end

    def valid?
      return true if @domain_name.blank?
      @domain_name.scan(/^(http|https):\/\//).empty? ? @domain_name =~ /^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ : @domain_name =~ /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix
    end
  end
end