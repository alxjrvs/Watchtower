# Read about factories at https://github.com/thoughtbot/factory_girl
require 'spec_helper'


FactoryGirl.define do
  sequence(:rand_title) {|n| RandomWord.adjs.next} 
  factory :item do
    name {   "\'" + generate(:rand_title).capitalize + "\'" + " Review"}

    factory :assigned_item, class: User do
      user
      date_assigned Time.now
    end
  end
end
