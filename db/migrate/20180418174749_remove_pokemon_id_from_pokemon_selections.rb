class RemovePokemonIdFromPokemonSelections < ActiveRecord::Migration[5.2]
  def change
    remove_column :pokemon_selections, :pokemon_id, :integer
  end
end
