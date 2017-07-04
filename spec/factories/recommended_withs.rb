# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recommended_with do
    association :recipe
    association :recommended_recipe, factory: :recipe
  end
end
