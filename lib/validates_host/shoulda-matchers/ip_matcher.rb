require "shoulda-matchers"

module Shoulda
  module Matchers
    module ActiveModel
      def require_a_valid_ip(attribute = :ip)
        IpMatcher.new(attribute)
      end

      class IpMatcher < ValidationMatcher
        def initialize(attribute)
          @attribute = attribute
        end

        def description
          "require #{@attribute} to be a valid ip"
        end

        def matches?(subject)
          super(subject)

          disallows_invalid_value and allows_valid_value and allows_nil_value
        end

        private

        def disallows_invalid_value
          disallows_value_of("10.0.0")
        end

        def allows_valid_value
          allows_value_of("10.10.10.1")
        end

        def allows_nil_value
          allows_value_of(nil)
        end
      end
    end
  end
end