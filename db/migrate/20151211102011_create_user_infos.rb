class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :gender
      t.string :nick_name
      t.date :birthday
      t.string :email
      t.string :image_url
      t.string :home_provice
      t.string :home_city
      t.integer :user_login_id
      t.integer :institute_id
      t.timestamps null: false
    end
   add_index :user_infos, :user_login_id
   add_index :user_infos, :institute_id
   add_index :user_infos, :nick_name
  end
end
