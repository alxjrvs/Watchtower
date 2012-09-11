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
end
