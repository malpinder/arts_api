# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exhibition do
    association :gallery
    name "An exhibition"
    description "An incredible exhibition"
    entry_fee 100
    max_tickets 10
    opens_on "2014-04-11 17:33:54"
    closes_on "2014-04-11 17:33:54"
  end
end
