class CreateUserLogins < ActiveRecord::Migration
  def change
    create_table :user_logins do |t|
      t.string :user_id
      t.string :password
      t.timestamps null: false
    end
    add_index :user_logins, :user_id, {:unique => true}
  end
end
