# frozen_string_literal: true

require 'spec_helper'

describe Shoulda::Matchers::ActiveModel::RequireAValidDomainNameMatcher do
  let(:server) { Server.new }

  it 'accepts on domain_name' do
    expect(server).to require_a_valid_domain_name(:domain_name)
  end

  it 'accepts without a specified attribute' do
    expect(server).to require_a_valid_domain_name
  end

  it 'rejects on host_name' do
    expect(server).not_to require_a_valid_domain_name(:host_name)
  end

  it 'has a description message' do
    expect(require_a_valid_domain_name.description).to eq('require domain_name to be a valid domain name')
  end
end
