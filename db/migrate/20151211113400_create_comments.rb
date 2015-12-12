class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.date :edit_time
      t.string :context_url
      t.integer :post_id
      t.integer :user_login_id
      t.timestamps null: false
    end
    add_index :comments, :post_id
    add_index :comments, :user_login_id
  end
end
