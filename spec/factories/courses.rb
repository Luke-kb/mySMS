FactoryBot.define do
  factory :course do
    name { "MyString" }
    description { "MyText" }
    number_of_semesters { 1 }
    start_date { "2021-03-19" }
    end_date { "2021-03-19" }
    allocation { 1 }
  end
end
