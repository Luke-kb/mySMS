FactoryBot.define do
  factory :title do
    name { %w[Mr Mrs Miss Ms Dr Master].sample }
  end
end
