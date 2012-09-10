# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "David Anderson" 
    email "david@spandexless.com"
    password "foobar"
    password_confirmation "foobar"
    admin  false
  end
  factory :admin do
    name "Alex Jarvis" 
    email "Alxjrvs@spandexless.com"
    password "foobar"
    password_confirmation "foobar"
    admin true
  end
end
