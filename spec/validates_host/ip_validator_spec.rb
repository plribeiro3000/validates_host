# frozen_string_literal: true

require 'spec_helper'

describe IpValidator do
  let(:server) { Server.new }

  context 'when ip is invalid' do
    before do
      server.ip = '127.0.0'
      server.valid?
    end

    it 'sets object as invalid' do
      expect(server).not_to be_valid
    end

    it 'sets an error' do
      expect(server.errors[:ip]).to eq(['is invalid'])
    end
  end

  context 'when ip is IPV4 valid' do
    before do
      server.ip = '10.10.10.1'
      server.valid?
    end

    it 'sets object as valid' do
      expect(server).to be_valid
    end

    it 'does not set an error on attribute' do
      expect(server.errors[:ip]).to be_blank
    end
  end

  context 'when ip is IPV6 valid' do
    before do
      server.ip = 'fd92:fe56:b43a:062e:ffff:ffff:ffff:ffff'
      server.valid?
    end

    it 'sets object as valid' do
      expect(server).to be_valid
    end

    it 'does not set an error on attribute' do
      expect(server.errors[:ip]).to be_blank
    end
  end

  it 'is valid with a nil value' do
    expect(server).to be_valid
  end
end
