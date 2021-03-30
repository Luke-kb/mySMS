FactoryBot.define do
  factory :student do
    title
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.unique.safe_email }
    birth_date { Faker::Date.birthday(min_age: 18, max_age: 65) }
    gender { Faker::Gender.binary_type }
  end
end
