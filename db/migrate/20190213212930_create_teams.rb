class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :year
      t.string :team_code
      t.references :franchise
      t.integer :w
      t.integer :l
      t.string :name
      t.string :park
      t.integer :bpf
      t.integer :ppf

      t.timestamps
    end
  end
end
