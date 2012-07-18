require 'spec_helper'

describe IpValidator do
  context "when ip is invalid" do
    before :each do
      @server = Server.new(:ip => "127.0.0")
    end

    it "should set object as invalid" do
      @server.valid?.should be_false
    end

    it "should set an error" do
      @server.valid?
      @server.errors[:ip].should == ['is invalid']
    end
  end

  context "when ip is valid" do
    before :each do
      @server = Server.new(:ip => "10.10.10.1")
    end

    it "should set object as valid" do
      @server.valid?.should be_true
    end

    it "should not set an error on attribute" do
      @server.valid?
      @server.errors[:ip].should be_blank
    end
  end

  it "should be valid with a nil value" do
    @server = Server.new(:ip => nil)
    @server.valid?.should be_true
  end
end