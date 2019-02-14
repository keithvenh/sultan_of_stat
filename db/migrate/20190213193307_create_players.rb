class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :player_code
      t.string :first_name
      t.string :last_name
      t.string :bats
      t.string :throws

      t.timestamps
    end
  end
end
