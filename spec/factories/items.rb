FactoryBot.define do
  factory :item do
    shohin_name         {'あ'}
    explanation         {'あ'}
    price               {'1'}
    status_id           {2}
    genre_id            {2}
    charge_id           {2}
    prefecture_id       {'1'}
    sending_day_id      {'1'}
    association :user
  end
end
