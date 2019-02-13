class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_name
      t.string :email
      t.string :provider
      t.string :uid
      t.string :password_digest

      t.timestamps
    end
  end
end
