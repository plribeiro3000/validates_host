require 'remarkable/active_model'

module Remarkable
  module ActiveModel
    module Matchers
      class HostNameMatcher < Remarkable::ActiveModel::Base
        arguments :host_name

        collection_assertions :accept_valid_value?, :reject_valid_value?

        protected

        def accept_valid_value?
          @subject.domain_name = 'bd01'
          @subject.valid?.errors[:host_name].should == []
        end

        def reject_valid_value?
          @subject.domain_name = '01'
          @subject.valid?.errors[:host_name].should == ['is invalid']
        end
      end

      def require_a_valid_domain_name(*args, &block)
        HostNameMatcher.new(*args, &block).spec(self)
      end
    end
  end
end