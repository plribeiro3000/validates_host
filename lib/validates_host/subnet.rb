module ValidatesHost
  class Subnet
    def initialize(subnet)
      @subnet = subnet
    end

    def valid?
      return true if @subnet.blank?
      @subnet =~ /^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}\/(2[4-9]|30)$/
    end

    def subnet
      @subnet
    end
  end
end