require "shoulda-matchers"

module Shoulda
  module Matchers
    module ActiveModel
      def require_a_valid_domain_name(attribute = :domain_name)
        DomainNameMatcher.new(attribute)
      end

      class DomainNameMatcher < ValidationMatcher
        def initialize(attribute)
          @attribute = attribute
        end

        def description
          "require #{@attribute} to be a valid domain name"
        end

        def matches?(subject)
          super(subject)

          disallows_invalid_value and allows_valid_value and allows_nil_value
        end

        private

        def disallows_invalid_value
          disallows_value_of("example")
        end

        def allows_valid_value
          allows_value_of("example.com")
        end

        def allows_nil_value
          allows_value_of(nil)
        end
      end
    end
  end
end