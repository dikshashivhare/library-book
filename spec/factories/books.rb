FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    association :library
    status { 'available' }
  end

  trait :checked_out do
    status { 'checked_out' }
    association :checked_out_by, factory: :user
  end
end
 