class CreatePitchingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :pitching_records do |t|
      t.references :player
      t.integer :year
      t.integer :stint
      t.references :team
      t.integer :w
      t.integer :l
      t.integer :games
      t.integer :gs
      t.integer :cg
      t.integer :sho
      t.integer :sv
      t.integer :outs
      t.integer :h
      t.integer :er
      t.integer :hr
      t.integer :bb
      t.integer :so
      t.float :baa
      t.float :era
      t.integer :ibb
      t.integer :wp
      t.integer :hbp
      t.integer :bk
      t.integer :tbf
      t.integer :gf
      t.integer :r
      t.integer :sac
      t.integer :sf
      t.integer :gidp

      t.timestamps
    end
  end
end
