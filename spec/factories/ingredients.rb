# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ingredient do
    association :recipe
    name 'sugar'
    amount '1/2 cup'
  end
end
