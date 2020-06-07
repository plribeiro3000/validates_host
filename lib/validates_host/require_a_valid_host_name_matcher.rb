# frozen_string_literal: true

require 'shoulda-matchers'

module Shoulda
  module Matchers
    module ActiveModel
      def require_a_valid_host_name(attribute = :host_name)
        RequireAValidHostNameMatcher.new(attribute)
      end

      class RequireAValidHostNameMatcher < ValidationMatcher
        def description
          "require #{@attribute} to be a valid host name"
        end

        def matches?(subject)
          super(subject)

          disallows_invalid_value && allows_valid_value
        end

        private

        def disallows_invalid_value
          disallows_value_of('1bd')
        end

        def allows_valid_value
          allows_value_of('bd01')
        end
      end
    end
  end
end
