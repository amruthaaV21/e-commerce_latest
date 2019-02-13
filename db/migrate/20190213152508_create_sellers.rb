class CreateSellers < ActiveRecord::Migration[5.1]
  def change
    create_table :sellers do |t|
      t.integer :seller_id
      t.string :company_name

      t.timestamps
    end
  end
end
