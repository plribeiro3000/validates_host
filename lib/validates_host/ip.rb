module ValidatesHost
  class Ip
    def initialize(ip)
      @ip = ip
    end

    def valid?
      return true if @ip.blank?
      @ip =~ /^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$/
    end
  end
end