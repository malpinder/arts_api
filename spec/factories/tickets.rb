# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket do
    association :exhibition
    entry_at "2014-04-12 14:00:00"
    name "Georgia O'Keeffe"
  end
end
