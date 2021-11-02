FactoryBot.define do
  factory :item do
    shohin_name         {'あ'}
    explanation         {'あ'}
    price               {'1000'}
    status_id           {2}
    genre_id            {2}
    charge_id           {2}
    prefecture_id       {2}
    sending_day_id      {2}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
