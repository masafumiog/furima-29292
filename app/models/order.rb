class Order < ApplicationRecord
  belongs_to :buy
  validates  :prefecture_id, numericality: { other_than: 1 }
end