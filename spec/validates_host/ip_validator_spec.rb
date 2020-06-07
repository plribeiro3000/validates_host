# frozen_string_literal: true

require 'spec_helper'

describe IpValidator do
  context 'when ip is invalid' do
    before :each do
      @server = Server.new(ip: '127.0.0')
    end

    it 'should set object as invalid' do
      expect(@server.valid?).to be_falsey
    end

    it 'should set an error' do
      @server.valid?
      expect(@server.errors[:ip]).to eq(['is invalid'])
    end
  end

  context 'when ip is valid' do
    before :each do
      @server = Server.new(ip: '10.10.10.1')
    end

    it 'should set object as valid' do
      expect(@server.valid?).to be_truthy
    end

    it 'should not set an error on attribute' do
      @server.valid?
      expect(@server.errors[:ip]).to be_blank
    end
  end

  it 'should be valid with a nil value' do
    @server = Server.new(ip: nil)
    expect(@server.valid?).to be_truthy
  end
end
