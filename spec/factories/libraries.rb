FactoryBot.define do
  factory :library do
    name { Faker::Book.unique.title }
    other_info { Faker::Lorem.sentence }
  end
end
 