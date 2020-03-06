class CreatePokemonSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_selections do |t|
      t.references :pokedex
      t.references :user
      t.integer :user_id
      t.integer :pokemon_id

      t.timestamps
    end
  end
end
