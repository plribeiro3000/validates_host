require 'spec_helper'

describe HostNameValidator do
  context "when host_name is invalid" do
    before :each do
      @server = Server.new(:host_name => "http://")
      I18n.stub(:t).with(:"activerecord.errors.models.server.attributes.host_name.invalid",
                         :default => :"activerecord.errors.messages.invalid").and_return("is invalid")
    end

    it "should set object as invalid" do
      @server.valid?.should be_false
    end

    it "should set an error" do
      @server.valid?
      @server.errors[:host_name].should == ['is invalid']
    end
  end

  context "when host_name is valid" do
    before :each do
      @server = Server.new(:host_name => "bd01")
    end

    it "should set object as valid" do
      @server.valid?.should be_true
    end

    it "should not set an error on attribute" do
      @server.valid?
      @server.errors[:host_name].should be_blank
    end
  end

  it "should be valid with a nil value" do
    @server = Server.new(:host_name => nil)
    @server.valid?.should be_true
  end
end