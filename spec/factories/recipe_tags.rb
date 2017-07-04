# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe_tag do
    association :recipe
    association :tag
  end
end
