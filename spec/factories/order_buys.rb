FactoryBot.define do
  factory :orderBuy do
    address         {"青山2-1"}
    postnumber      {"222-0001"}
    city            {"横浜市中区"}
    tellnumber      {"09098766789"}
    prefecture_id   {5}
    token           {"testtest"}
    buildname       {"横浜タワー"}
    
    association :user
    association :item
  end
end
