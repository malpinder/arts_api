# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gallery do
    name "A Gallery"
    description "A fabulous gallery"
    address "123 Street"
    opening_hour 9
    closing_hour 16
  end
end
