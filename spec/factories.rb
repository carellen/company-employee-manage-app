FactoryBot.define do
  factory :user do
    email     'user@example.com'
    password  'password'
  end

  factory :company do
    name 'My company'
    slug 'my_company'
  end
end
