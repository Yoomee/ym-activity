FactoryGirl.define do

  factory :resource do
    name 'A resource'
  end

  factory :user do
    sequence(:email){|n| "test#{n}@yoomee.com" }
  end

  factory :activity_item do
    association :user
    association :resource
  end

end
