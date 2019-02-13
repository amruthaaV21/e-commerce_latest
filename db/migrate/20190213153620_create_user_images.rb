class CreateUserImages < ActiveRecord::Migration[5.1]
  def change
    create_table :user_images do |t|
      t.integer :user_id
      t.binary :user_image

      t.timestamps
    end
  end
end
