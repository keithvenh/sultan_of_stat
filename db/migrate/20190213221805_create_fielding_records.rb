class CreateFieldingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :fielding_records do |t|
      t.references :player
      t.integer :year
      t.string :stint
      t.references :team
      t.string :pos
      t.integer :games
      t.integer :gs
      t.integer :inn_outs
      t.integer :po
      t.integer :a
      t.integer :e
      t.integer :dp
      t.integer :pb
      t.integer :wp
      t.integer :sb
      t.integer :cs
      t.integer :zr

      t.timestamps
    end
  end
end
