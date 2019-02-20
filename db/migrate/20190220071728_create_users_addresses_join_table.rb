class CreateUsersAddressesJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :addresses do |t|
      t.index :user_id
      t.index :address_id
    end
  end
end
