class CreateWishes < ActiveRecord::Migration[5.1]
  def change
    create_table :wishes do |t|
      t.integer :wish_id
      t.integer :wish_item_id
      t.integer :wish_quantity
      t.integer :purchased_quantity
      t.boolean :purchase_status

      t.timestamps
    end
  end
end
