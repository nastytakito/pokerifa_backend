class PokemonSelection < ApplicationRecord
  validates_presence_of :user_id, :pokedex_id
  belongs_to :pokedex
  belongs_to :user
end
