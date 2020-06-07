# frozen_string_literal: true

require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidSubnetMatcher do
  let(:subnet) { Subnet.new }

  it 'accepts on value' do
    expect(subnet).to require_a_valid_subnet(:value)
  end

  it 'accepts without a specified attribute' do
    expect(subnet).to require_a_valid_subnet
  end

  it 'rejects on id' do
    expect(subnet).not_to require_a_valid_subnet(:id)
  end

  it 'has a description message' do
    expect(require_a_valid_subnet.description).to eq('require value to be a valid subnet')
  end
end
