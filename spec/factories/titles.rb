FactoryBot.define do
  factory :title do
    name { Faker::Name.unique.prefix }
  end
end
