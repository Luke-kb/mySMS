FactoryBot.define do
  factory :institute do
    name { Faker::Educator.unique.university }
  end
end
