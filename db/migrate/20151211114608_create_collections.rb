class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :post_id
      t.integer :user_login_id
      t.timestamps null: false
    end
    add_index :collections, :user_login_id
    add_index :collections, :post_id
  end
end
