class CreateGroupInfos < ActiveRecord::Migration
  def change
    create_table :group_infos do |t|
      t.string :group_name
      t.date :create_time
      t.string :image_url
      t.integer :user_login_id
      t.timestamps null: false
    end
    add_index :group_infos, :user_login_id
    add_index :group_infos, :group_name, {:unique => true}
  end
end
