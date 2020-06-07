# frozen_string_literal: true

module ValidatesHost
  class Ip
    def initialize(value)
      @value = value
    end

    def valid?
      return true if @value.blank?

      @value =~ /^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$/
    end
  end
end
