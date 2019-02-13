class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :buyer_id
      t.integer :total_price
      t.string :payment_method
      t.string :order_status

      t.timestamps
    end
  end
end
