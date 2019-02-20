class CreateUsersImagesJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :images do |t|
      t.index :user_id
      t.index :image_id
    end
  end
end
