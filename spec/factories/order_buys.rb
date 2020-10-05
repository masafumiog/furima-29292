FactoryBot.define do
  factory :OrderBuy do
    address         {"青山2-1"}
    postnumber      {"222-0001"}
    city            {"横浜市中区"}
    tellnumber      {"09098766789"}
    prefecture_id   {5}
    token           {"4242424242424242"}
    buildname       {"横浜タワー"}
    
    user_id        {:user}
    item_id        {:item}
  end
end
