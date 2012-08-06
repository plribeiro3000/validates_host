require 'spec_helper'

describe SubnetValidator do
  context "when subnet is invalid" do
    before :each do
      @subnet = Subnet.new(:value => "127.0.0")
      I18n.stub(:t).with(:"activerecord.errors.models.subnet.attributes.value.invalid",
                         :default => :"activerecord.errors.messages.invalid").and_return("is invalid")
    end

    it "should set object as invalid" do
      @subnet.valid?.should be_false
    end

    it "should set an error" do
      @subnet.valid?
      @subnet.errors[:value].should == ['is invalid']
    end
  end

  context "when subnet is valid" do
    before :each do
      @subnet = Subnet.new(:value => "10.10.10.1/28")
    end

    it "should set object as valid" do
      @subnet.valid?.should be_true
    end

    it "should not set an error on attribute" do
      @subnet.valid?
      @subnet.errors[:value].should be_blank
    end
  end

  it "should be valid with a nil value" do
    @subnet = Subnet.new(:value => nil)
    @subnet.valid?.should be_true
  end
end