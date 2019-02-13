class CreateBuyers < ActiveRecord::Migration[5.1]
  def change
    create_table :buyers do |t|
      t.integer :buyer_id
      t.string :first_name
      t.string :last_name
      t.string :card_number

      t.timestamps
    end
  end
end
