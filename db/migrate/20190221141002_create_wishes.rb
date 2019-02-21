class CreateWishes < ActiveRecord::Migration[5.1]
  def change
    create_table :wishes do |t|
      t.integer :wish_quantity
      t.integer :purchased_quantity
      t.boolean :purchase_status
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
