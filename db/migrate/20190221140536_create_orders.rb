class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.string :payment_method
      t.string :order_status
      t.references :buyer, foreign_key: true

      t.timestamps
    end
  end
end
