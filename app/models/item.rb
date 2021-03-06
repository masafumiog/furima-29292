class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :burden
  belongs_to_active_hash :area
  belongs_to_active_hash :send_time

  has_one_attached :image
  belongs_to :user
  has_one :buy

  validates :name, :text, :category_id, :status_id, :burden_id, :area_id, :send_time_id, :price, :image, presence:true
  validates :category_id, :status_id, :burden_id, :area_id, :send_time_id, numericality: { other_than: 1 } 
  validates :price,numericality:{only_integer:true,greater_than_or_equal_to:300,less_than_or_equal_to:9999999}
end
