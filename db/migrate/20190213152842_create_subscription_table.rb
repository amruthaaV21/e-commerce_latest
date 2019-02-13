class CreateSubscriptionTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :buyer_id, :seller_id do |t|
    t.index :buyer_id
    t.index :seller_id
    end
  end
end
