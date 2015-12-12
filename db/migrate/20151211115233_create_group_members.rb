class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.integer :group_info_id
      t.integer :user_login_id
      t.timestamps null: false
    end
    add_index :group_members, :user_login_id
    add_index :group_members, :group_info_id
  end
end
