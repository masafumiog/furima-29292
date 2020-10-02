class Order < ApplicationRecord
  belongs_to :buy
  validates  :prefectures_id, numericality: { other_than: 1 }
end