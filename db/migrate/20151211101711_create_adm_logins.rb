class CreateAdmLogins < ActiveRecord::Migration
  def change
    create_table :adm_logins do |t|
      t.string :user_id
      t.string :password
      t.timestamps null: false
    end
    add_index :adm_logins, :user_id, {:unique => true}
  end
end
