# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe_category do
    association :recipe
    association :category
  end
end
