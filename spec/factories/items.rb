# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name "Interview with Jim Zub"

    factory :assigned_item, class: Item  do
      date_assigned  Time.now
      user :admin
    end
  end
end
