require 'remarkable/active_model'

module Remarkable
  module ActiveModel
    module Matchers
      class SubnetMatcher < Remarkable::ActiveModel::Base
        arguments :value

        collection_assertions :accept_valid_value?, :reject_valid_value?

        protected

        def accept_valid_value?
          @subject.value = '10.10.10.1/28'
          @subject.valid?.errors[:value].should == []
        end

        def reject_valid_value?
          @subject.value = '01'
          @subject.valid?.errors[:value].should == ['is invalid']
        end
      end

      def require_a_valid_domain_name(*args, &block)
        SubnetMatcher.new(*args, &block).spec(self)
      end
    end
  end
end