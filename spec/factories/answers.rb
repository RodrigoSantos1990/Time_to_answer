FactoryBot.define do
  factory :answer do
    description { "MyText" }
    question { nil }
    correct { false }
  end
end
