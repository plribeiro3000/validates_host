# frozen_string_literal: true

require 'spec_helper'

describe SubnetValidator do
  let(:subnet) { Subnet.new }

  context 'when subnet is invalid' do
    before do
      subnet.value = '127.0.0'
      subnet.valid?
    end

    it 'sets object as invalid' do
      expect(subnet).not_to be_valid
    end

    it 'sets an error' do
      expect(subnet.errors[:value]).to eq(['is invalid'])
    end
  end

  context 'when subnet is valid' do
    before do
      subnet.value = '10.10.10.1/28'
      subnet.valid?
    end

    it 'sets object as valid' do
      expect(subnet).to be_valid
    end

    it 'does not set an error on attribute' do
      expect(subnet.errors[:value]).to be_blank
    end
  end

  it 'is valid with a nil value' do
    expect(subnet).to be_valid
  end
end
