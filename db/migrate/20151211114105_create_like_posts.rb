class CreateLikePosts < ActiveRecord::Migration
  def change
    create_table :like_posts do |t|
      t.integer :post_id
      t.integer :user_login_id
      t.timestamps null: false
    end
    add_index :like_posts, :user_login_id
    add_index :like_posts, :post_id
  end
end
