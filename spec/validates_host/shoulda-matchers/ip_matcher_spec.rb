require 'spec_helper'
require 'shoulda-matchers'

describe Shoulda::Matchers::ActiveModel::IpMatcher do
  before :each do
    @server = Server.new
  end

  it "should accept on ip" do
    @server.should require_a_valid_ip(:ip)
  end

  it "should accept without a specified attribute" do
    @server.should require_a_valid_ip
  end

  it "should reject on domain_name" do
    @server.should_not require_a_valid_ip(:domain_name)
  end
end