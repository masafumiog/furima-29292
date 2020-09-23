class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :burden
  belongs_to_active_hash :area
  belongs_to_active_hash :send

  has_one_attached :image


  validates :name, :text, :category_id, :status_id, :burden_id, :area_id, :send_day_id, presence:true


  validates :category_id, :status_id, :burden_id, :area_id, :send_id, numericality: { other_than: 1 } 

end
