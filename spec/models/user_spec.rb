require 'spec_helper'

describe User do
  user = FactoryGirl.create :user
  it "Should have all the right parts" do
    subject { user }
    it {should respond_to :name}
  end
end
