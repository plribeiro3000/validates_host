require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidSubnetMatcher do
  before :each do
    @subnet = Subnet.new
  end

  it 'should accept on value' do
    @subnet.should require_a_valid_subnet(:value)
  end

  it 'should accept without a specified attribute' do
    @subnet.should require_a_valid_subnet
  end

  it 'should reject on id' do
    @subnet.should_not require_a_valid_subnet(:id)
  end

  it 'should have a description message' do
    require_a_valid_subnet.description.should == 'require value to be a valid subnet'
  end
end