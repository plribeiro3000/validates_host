# frozen_string_literal: true

require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidIpMatcher do
  let(:server) { Server.new }

  it 'accepts on ip' do
    expect(server).to require_a_valid_ip(:ip)
  end

  it 'accepts without a specified attribute' do
    expect(server).to require_a_valid_ip
  end

  it 'rejects on domain_name' do
    expect(server).not_to require_a_valid_ip(:domain_name)
  end

  it 'has a description message' do
    expect(require_a_valid_ip.description).to eq('require ip to be a valid ip')
  end
end
