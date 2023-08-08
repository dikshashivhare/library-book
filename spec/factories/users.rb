FactoryBot.define do
    factory :user do
    username { Faker::Internet.username }
    email { Faker::Internet.email }
    other_info { Faker::Lorem.sentence }
  end
end
  