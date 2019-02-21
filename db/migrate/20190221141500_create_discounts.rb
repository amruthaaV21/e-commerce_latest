class CreateDiscounts < ActiveRecord::Migration[5.1]
  def change
    create_table :discounts do |t|
      t.string :discount_type
      t.decimal :discount_percent
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
