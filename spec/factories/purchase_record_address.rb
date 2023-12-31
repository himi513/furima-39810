FactoryBot.define do
  factory :purchase_record_address do
    post_code   { '123-4567' }
    region_id   { Faker::Number.between(from: 2, to: 48) }
    city        { Faker::Address.city }
    street      { '1-1' }
    building    { '東京ハイツ' }
    telephone   { Faker::Number.decimal_part(digits: 11) }
    token       { 'tok_abcdefghijk00000000000000000' }
  end
end