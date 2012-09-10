require 'spec_helper'

describe User do
  context "user validations" do
    with :user
    it { user.should respond_to :name }
  end
end
