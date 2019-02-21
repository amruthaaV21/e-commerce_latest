class CreateBuyersWishesJoinTable < ActiveRecord::Migration[5.1]
  def change
     create_join_table :buyers, :wishes do |t|
      t.index :buyer_id
      t.index :wish_id
    end
  end
end
