require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidHostNameMatcher do
  before :each do
    @server = Server.new
  end

  it 'should accept on host_name' do
    @server.should require_a_valid_host_name(:host_name)
  end

  it 'should accept without a specified attribute' do
    @server.should require_a_valid_host_name
  end

  it 'should reject on domain_name' do
    @server.should_not require_a_valid_host_name(:domain_name)
  end

  it 'should have a description message' do
    require_a_valid_host_name.description.should == 'require host_name to be a valid host name'
  end
end