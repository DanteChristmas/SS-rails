FactoryGirl.define do
  factory :product do
    product_type { rand(0..2) }
    status { rand(0..2) }
    available { [true, false].sample }
    published { [true, false].sample }
    available_since { Faker::Date.backward(100) }
    published_since { Faker::Date.backward(20) }
    name { Faker::Lorem.word }
    description { Faker::ChuckNorris.fact }
    price { Faker::Number.decimal(2) }
  end
end
