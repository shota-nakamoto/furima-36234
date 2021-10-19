FactoryBot.define do
  factory :user do
    name                   {Faker::Name.initials(number: 2)}
    email                  {Faker::Internet.free_email}
    password               { '1a' + Faker::Internet.password(min_length: 4) }
    password_confirmation  {password}
    birthday               {'1930-1-1'}
    first_name             {'あ'}
    last_name              {'あ'}
    first_name_kana        {'ア'}
    last_name_kana         {'ア'}
  end
end