FactoryGirl.define do
  factory :user do
    name     "Joe Rohde"
    email    "jrohde@disney.com"
    password "foobar"
    password_confirmation "foobar"
  end
end