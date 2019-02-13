class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.integer :admin_id
      t.string :allowed_access

      t.timestamps
    end
  end
end
