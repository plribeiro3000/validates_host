require 'spec_helper'

describe DomainNameValidator do
  context "when domain_name is invalid" do
    before :each do
      @server = Server.new(:domain_name => "http://")
    end

    it "should set object as invalid" do
      @server.valid?.should be_false
    end

    it "should set an error" do
      @server.valid?
      @server.errors[:domain_name].should == ['is invalid']
    end
  end

  context "when domain_name is valid" do
    before :each do
      @server = Server.new(:domain_name => "example.com")
    end

    it "should set object as valid" do
      @server.valid?.should be_true
    end

    it "should not set an error on attribute" do
      @server.valid?
      @server.errors[:domain_name].should be_blank
    end
  end

  it "should be valid with a nil value" do
    @server = Server.new(:domain_name => nil)
    @server.valid?.should be_true
  end
end