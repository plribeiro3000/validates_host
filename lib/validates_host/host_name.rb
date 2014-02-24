module ValidatesHost
  class HostName
    def initialize(host_name)
      @host_name = host_name
    end

    def valid?
      return true if @host_name.blank?
      @host_name =~ /^[a-z][a-z0-9-]+$/
    end
  end
end