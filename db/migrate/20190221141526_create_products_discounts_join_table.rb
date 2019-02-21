class CreateProductsDiscountsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :products, :discounts do |t|
      t.index :product_id
      t.index :discount_id
    end
  end
end
