require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidSubnetMatcher do
  before :each do
    @subnet = Subnet.new
  end

  it 'should accept on value' do
    expect(@subnet).to require_a_valid_subnet(:value)
  end

  it 'should accept without a specified attribute' do
    expect(@subnet).to require_a_valid_subnet
  end

  it 'should reject on id' do
    expect(@subnet).not_to require_a_valid_subnet(:id)
  end

  it 'should have a description message' do
    expect(require_a_valid_subnet.description).to eq('require value to be a valid subnet')
  end
end