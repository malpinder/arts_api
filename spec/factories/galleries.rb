# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gallery do
    name "MyString"
    description ""
    address "MyText"
    opening_hour 9
    closing_hour 16
  end
end
