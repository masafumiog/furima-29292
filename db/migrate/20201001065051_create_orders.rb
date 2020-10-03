class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :address       ,null:false
      t.string :postnumber    ,null:false
      t.string :city          ,null:false
      t.string :tellnumber    ,null:false
      t.integer :buy_id       ,foreign_key:true, null:false
      t.integer :prefecture_id  ,null:false
      t.string :buildname     

      t.timestamps
    end
  end
end
