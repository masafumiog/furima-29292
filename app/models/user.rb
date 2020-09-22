class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   validates :nickname, :name_sei, :name_mai, :kana_sei, :kana_mei, :birthday, presence: true
   validates :email, uniqueness: true
  #  validates :password, format: { with: /\A[a-zA-Z0-9]+\z/}
   validates :password, format: { with: /\A[a-z0-9]+\z/i, message: "is invalid. Input half-width characters."}
   validates :name_sei, :name_mai, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "is invalid. Input full-width characters."}
   validates :kana_mei, :kana_sei, format: { with: /\A[ァ-ヶー－]+\z/, message: "is invalid. Input full-width katakana characters."}
  
end
