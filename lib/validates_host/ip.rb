# frozen_string_literal: true

require 'resolv'

module ValidatesHost
  class Ip
    def initialize(value)
      @value = value
    end

    def valid?
      return true if @value.blank?

      @value =~ Regexp.union(Resolv::IPv4::Regex, Resolv::IPv6::Regex)
    end
  end
end
