FactoryBot.define do
  factory :user do
    nickname               {"abe"}
    email                  {Faker::Internet.free_email}
    password               {"e123456"}
    password_confirmation  {password}
    name_sei               {"矢部"}
    name_mai               {"弘"}
    kana_sei               {"ヤベ"}
    kana_mei               {"ヒロシ"}
    birthday               {"1990-11-11"}
  end
end