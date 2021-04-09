FactoryBot.define do
  factory :note do
    title { Faker::Lorem.sentence }
    content { (Faker::Lorem.paragraphs(number: 2, supplemental: true)).join(" ") }
  end
end
