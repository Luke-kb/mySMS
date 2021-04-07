FactoryBot.define do
  factory :note do
    title { (Faker::Movie.quote).tr('"', '') }
    content { (Faker::Lorem.paragraphs(number: 1, supplemental: true)).join(" ") }
  end
end
