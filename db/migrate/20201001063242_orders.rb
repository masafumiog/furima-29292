class Orders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id, foreign_key:true, null:false
      t.integer :item_id, foreign_key:true, null:false
      t.string  :card_id, null:false
      t.timestamps
    end
  end
end