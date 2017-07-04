# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :day do
    date '2017-07-04'
    main_dish 'chicken'
    side_1 'potato'
    side_2 'rice'
    side_3 'french fries'
    salad 'avocado'
    starter 'baked apple'
    dessert 'ice cream'
    soup 'mushroom'
  end
end
