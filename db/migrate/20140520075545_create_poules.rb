class CreatePoules < ActiveRecord::Migration
  def change
    create_table :poules do |t|
      t.string :name
      t.string :encrypted_password
      t.string :reset_password_token
      t.references :user, index: true

      t.timestamps
    end
  end
end
