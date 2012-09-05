# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name "Interview with Jim Zub"

    factory :assigned_item, class: Item  do
      date_assigned "01-20-1988"
      user
    end
  end
end
