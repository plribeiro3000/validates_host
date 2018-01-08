require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidDomainNameMatcher do
  before :each do
    @server = Server.new
  end

  it 'should accept on domain_name' do
    expect(@server).to require_a_valid_domain_name(:domain_name)
  end

  it 'should accept without a specified attribute' do
    expect(@server).to require_a_valid_domain_name
  end

  it 'should reject on host_name' do
    expect(@server).not_to require_a_valid_domain_name(:host_name)
  end

  it 'should have a description message' do
    expect(require_a_valid_domain_name.description).to eq('require domain_name to be a valid domain name')
  end
end