require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidDomainNameMatcher do
  before :each do
    @server = Server.new
  end

  it 'should accept on domain_name' do
    @server.should require_a_valid_domain_name(:domain_name)
  end

  it 'should accept without a specified attribute' do
    @server.should require_a_valid_domain_name
  end

  it 'should reject on host_name' do
    @server.should_not require_a_valid_domain_name(:host_name)
  end

  it 'should have a description message' do
    require_a_valid_domain_name.description.should == 'require domain_name to be a valid domain name'
  end
end