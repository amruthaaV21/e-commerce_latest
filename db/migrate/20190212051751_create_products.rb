class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :porduct_name
      t.decimal :price
      t.integer :quantity_in_stock
      t.boolean :discount
      t.integer :seller_id

      t.timestamps
    end
  end
end
