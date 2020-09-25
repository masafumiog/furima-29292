class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :burden
  belongs_to_active_hash :area
  belongs_to_active_hash :send_time

  has_one_attached :image
  belongs_to :user


  validates :name, :text, :category_id, :status_id, :burden_id, :area_id, :send_time_id, :price, presence:true
  validates :category_id, :status_id, :burden_id, :area_id, :send_time_id, numericality: { other_than: 1 } 

end
