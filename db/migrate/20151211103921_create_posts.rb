class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :context_url
      t.date :edit_time
      t.boolean :is_notice
      t.integer :group_info_id
      t.integer :user_login_id
      t.timestamps null: false
    end
    add_index :posts, :group_info_id
    add_index :posts, :user_login_id
    add_index :posts, :title, {:unique => true}
  end
end
