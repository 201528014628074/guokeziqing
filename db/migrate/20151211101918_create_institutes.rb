class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
      t.string :inst_name
      t.string :provice
      t.string :city
      t.timestamps null: false
    end
    add_index :institutes, :inst_name, {:unique => true}
  end
end
