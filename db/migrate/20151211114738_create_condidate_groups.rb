class CreateCondidateGroups < ActiveRecord::Migration
  def change
    create_table :condidate_groups do |t|
      t.string :group_name
      t.date :create_time
      t.string :image_url
      t.integer :user_login_id
      t.timestamps null: false
    end
    add_index :condidate_groups, :user_login_id
    add_index :condidate_groups, :group_name, {:unique => true}
  end
end
