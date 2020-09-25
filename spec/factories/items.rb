FactoryBot.define do
  factory :item do
    name                   {"えんぴつ"}
    text                   {"新品のえんぴつ"}
    category_id            {2}
    status_id              {2}
    burden_id              {2}
    area_id                {2}
    send_time_id           {2}
    price                  {3000}

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

    association :user
  end
end