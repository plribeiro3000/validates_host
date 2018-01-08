require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidIpMatcher do
  before :each do
    @server = Server.new
  end

  it 'should accept on ip' do
    expect(@server).to require_a_valid_ip(:ip)
  end

  it 'should accept without a specified attribute' do
    expect(@server).to require_a_valid_ip
  end

  it 'should reject on domain_name' do
    expect(@server).not_to require_a_valid_ip(:domain_name)
  end

  it 'should have a description message' do
    expect(require_a_valid_ip.description).to eq('require ip to be a valid ip')
  end
end