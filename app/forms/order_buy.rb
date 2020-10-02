class OrderBuy
  include ActiveModel::Model

  attr_accessor :item_id, :user_id,:token,:address, :city, :tellnumber, :buy_id, :prefectuers, :buildname,:postnumber

  with_options presence: true do
    validates :item_id
    validates :user_id
    validates :token
    validates :postnumber, format: { with: /\A\d{3}[-]\d{4}\z/, message: "is invalid. Input '-'"}
    validates :prefectuers
    validates :city
    validates :address
    validates :tellnumber, format: { with: /\A[0-9]+\z/, message: "is invalid. Input all number"}
    validates :tellnumber, format: { with: /\A\d{11}\z/, message: "is invalid. Input all number"}
  end

  def save
    buy = Buy.create(
      user_id: user_id,
       item_id: item_id,
      )
    Order.create(
      postnumber:postnumber,
      prefectuers: prefectuers, 
      city: city, 
      buildname: buildname, 
      tellnumber: tellnumber, 
      buy_id: buy.id,
      address: address
    )
  end
end
