# frozen_string_literal: true

require 'spec_helper'

describe SubnetValidator do
  context 'when subnet is invalid' do
    before :each do
      @subnet = Subnet.new(value: '127.0.0')
    end

    it 'should set object as invalid' do
      expect(@subnet.valid?).to be_falsey
    end

    it 'should set an error' do
      @subnet.valid?
      expect(@subnet.errors[:value]).to eq(['is invalid'])
    end
  end

  context 'when subnet is valid' do
    before :each do
      @subnet = Subnet.new(value: '10.10.10.1/28')
    end

    it 'should set object as valid' do
      expect(@subnet.valid?).to be_truthy
    end

    it 'should not set an error on attribute' do
      @subnet.valid?
      expect(@subnet.errors[:value]).to be_blank
    end
  end

  it 'should be valid with a nil value' do
    @subnet = Subnet.new(value: nil)
    expect(@subnet.valid?).to be_truthy
  end
end
