require 'remarkable/active_model'

module Remarkable
  module ActiveModel
    module Matchers
      class IpMatcher < Remarkable::ActiveModel::Base
        arguments :ip

        collection_assertions :accept_valid_value?, :reject_valid_value?, :allow_nil?

        protected

        def accept_valid_value?
          @subject.domain_name = '10.10.10.1'
          @subject.valid?.errors[:ip].should == []
        end

        def reject_valid_value?
          @subject.domain_name = '01'
          @subject.valid?.errors[:ip].should == ['is invalid']
        end

        def allow_nil?
          @subject.domain_name = nil
          @subject.valid?.errors[:ip].should == []
        end
      end

      def require_a_valid_domain_name(*args, &block)
        HostNameMatcher.new(*args, &block).spec(self)
      end
    end
  end
end