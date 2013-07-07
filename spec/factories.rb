# FactoryGirl.define do
#   factory :user do
#     name     "Rahul Singh"
#     email    "rahul@akaruilabs.com"
#     password "rahul123"
#     password_confirmation "rahul123"
#   end
# end

FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
  	end
  end
end