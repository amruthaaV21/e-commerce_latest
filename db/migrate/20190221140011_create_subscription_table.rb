class CreateSubscriptionTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :buyers, :sellers do |t|
      t.index :buyer_id
      t.index :seller_id
    end
  end
end
