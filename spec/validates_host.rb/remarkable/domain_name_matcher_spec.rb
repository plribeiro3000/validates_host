require 'spec_helper'
require 'remarkable/active_model'

describe Remarkable::ActiveModel::Matchers::DomainNameMatcher do
  before :each do
    @server = Server.new
  end

  it "should accept on domain_name" do
    @server.should require_a_valid_domain_name(:domain_name)
  end

  it "should accept without a specified attribute" do
    @server.should require_a_valid_domain_name
  end

  it "should reject on host_name" do
    @server.should_not require_a_valid_domain_name(:host_name)
  end
end