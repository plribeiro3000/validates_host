# frozen_string_literal: true

require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidHostNameMatcher do
  let(:server) { Server.new }

  it 'accepts on host_name' do
    expect(server).to require_a_valid_host_name(:host_name)
  end

  it 'accepts without a specified attribute' do
    expect(server).to require_a_valid_host_name
  end

  it 'rejects on domain_name' do
    expect(server).not_to require_a_valid_host_name(:domain_name)
  end

  it 'has a description message' do
    expect(require_a_valid_host_name.description).to eq('require host_name to be a valid host name')
  end
end
