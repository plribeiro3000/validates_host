require 'spec_helper'

describe DomainValidator do
  context "when domain is invalid" do
    before :each do
      @server = Server.new(:domain => "http://")
    end

    it "should set object as invalid" do
      @server.valid?.should be_false
    end

    it "should set an error on attribute" do
      @server.valid?
      @server.errors[:domain].should == ['is invalid']
    end
  end

  context "when domain is valid" do
    before :each do
      @server = Server.new(:domain => "http://www.example.com")
    end

    it "should set object as valid" do
      @server.valid?.should be_true
    end

    it "should not set an error on attribute" do
      @server.valid?
      @server.errors[:domain].should be_blank
    end
  end

  it "should accept a nil value" do
    @server = Server.new(:domain => nil)
    @server.valid?.should be_true
  end
end