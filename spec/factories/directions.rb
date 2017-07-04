# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :direction do
    association :recipe
    description 'mix the oil with the water'
    step_number 1
  end
end
