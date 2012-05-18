FactoryGirl.define do

  factory :activity_item, :class => 'YmActivity::ActivityItem' do
    association :user
    association :resource
  end

  factory :resource do
    name 'A resource'
  end

end