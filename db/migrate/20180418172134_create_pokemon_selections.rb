class CreatePokemonSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_selections do |t|
      t.references :pokedex
      t.references :user

      t.timestamps
    end
  end
end
