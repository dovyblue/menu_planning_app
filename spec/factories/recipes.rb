# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
    title 'apple kugel'
    photo 'http://jonvilma.com/images/apple-16.jpg'
    description 'vary good spacial for shabbat'
    prep_time '1 hour'
    serving '10'
    difficulty '3'
    preference 'pareve'
  end
end
