FactoryBot.define do
  factory :course do
    name { "#{Faker::Job.unique.field} 101" }
    description { (Faker::Lorem.paragraphs(number: 2, supplemental: true)).join(" ") }
    number_of_semesters { rand(1..4) }
    start_date { Faker::Date.between(from: 10.days.ago, to: Date.today) }
    end_date { Faker::Date.forward(days: rand(30..50)) }
    allocation { rand(20..40) }
  end
end
