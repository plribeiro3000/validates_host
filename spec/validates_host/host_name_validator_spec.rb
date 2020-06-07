# frozen_string_literal: true

require 'spec_helper'

describe HostNameValidator do
  context 'when host_name is invalid' do
    before :each do
      @server = Server.new(host_name: 'http://')
    end

    it 'should set object as invalid' do
      expect(@server.valid?).to be_falsey
    end

    it 'should set an error' do
      @server.valid?
      expect(@server.errors[:host_name]).to eq(['is invalid'])
    end
  end

  context 'when host_name is valid' do
    before :each do
      @server = Server.new(host_name: 'bd01')
    end

    it 'should set object as valid' do
      expect(@server.valid?).to be_truthy
    end

    it 'should not set an error on attribute' do
      @server.valid?
      expect(@server.errors[:host_name]).to be_blank
    end
  end

  it 'should be valid with a nil value' do
    @server = Server.new(host_name: nil)
    expect(@server.valid?).to be_truthy
  end
end
