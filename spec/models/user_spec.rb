require 'spec_helper'

describe User do

  context "Should be valid" do
    with :user
    it { should be_valid }
  end

  context "Admins Should be Valid" do
    with :user, :admin => true
    it { should be_valid}
    its(:admin) { should == true}
  end

  #context "with Assignment" do
    #create :user do |user|
      #user.items.create(attributes_for(:item))

    #end

    #its(:items) {should include FactoryGirl.build :item}

  #end
end
