class CreateFranchises < ActiveRecord::Migration[5.2]
  def change
    create_table :franchises do |t|
      t.string :franchise_code
      t.string :franchise_name
      t.boolean :active
      t.string :franchise_assoc

      t.timestamps
    end
  end
end
