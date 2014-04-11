# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exhibition do
    association :gallery
    name "MyString"
    description "MyText"
    entry_fee 1
    max_tickets 1
    opens_on "2014-04-11 17:33:54"
    closes_on "2014-04-11 17:33:54"
  end
end
