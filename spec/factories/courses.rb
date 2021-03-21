FactoryBot.define do
  factory :course do
    name { "#{Faker::Job.unique.field} 101" }
    description { Faker::Lorem.paragraph }
    number_of_semesters { rand(1..4) }
    start_date { Date.today }
    end_date { Faker::Date.forward(days: 30) }
    allocation { rand(20..30) }
  end
end
