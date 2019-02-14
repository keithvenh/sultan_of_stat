class CreateBattingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :batting_records do |t|
      t.references :player
      t.integer :year
      t.integer :stint
      t.references :team
      t.integer :games
      t.integer :ab
      t.integer :r
      t.integer :h
      t.integer :d
      t.integer :t
      t.integer :hr
      t.integer :rbi
      t.integer :sb
      t.integer :cs
      t.integer :bb
      t.integer :so
      t.integer :ibb
      t.integer :hbp
      t.integer :sac
      t.integer :sf
      t.integer :gidp

      t.timestamps
    end
  end
end
