# frozen_string_literal: true

require 'spec_helper'

describe DomainNameValidator do
  let(:server) { Server.new }

  context 'when domain_name is invalid' do
    before do
      server.domain_name = 'http://'
      server.valid?
    end

    it 'sets object as invalid' do
      expect(server).not_to be_valid
    end

    it 'sets an error' do
      expect(server.errors[:domain_name]).to eq(['is invalid'])
    end
  end

  context 'when domain_name is valid' do
    before do
      server.domain_name = 'example.com'
      server.valid?
    end

    it 'sets object as valid' do
      expect(server).to be_valid
    end

    it 'does not set an error on attribute' do
      expect(server.errors[:domain_name]).to be_blank
    end
  end

  it 'is valid with a nil value' do
    expect(server).to be_valid
  end
end
