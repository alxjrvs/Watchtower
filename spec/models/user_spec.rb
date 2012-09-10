require 'spec_helper'

describe User do
  context "user validations" do
    before do 
      @user = FactoryGirl.create(:user)
    end
    subject { @user } 
    it { respond_to :name }
  end
end
