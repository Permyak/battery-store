FactoryGirl.define do
  factory :user do
    name     "Andrey"
    email    "Andrey@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end