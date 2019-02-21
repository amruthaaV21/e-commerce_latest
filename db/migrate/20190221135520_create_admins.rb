class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :allowed_access
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
