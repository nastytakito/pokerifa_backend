class CreatePokedex < ActiveRecord::Migration[5.2]
  def change
    create_table :pokedex do |t|
      t.string :name
      t.integer :dex_number
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :sp_attack
      t.integer :sp_defense
      t.integer :speed
      t.integer :total

      t.timestamps
    end
  end
end
