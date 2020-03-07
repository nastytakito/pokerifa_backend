class Pokedex < ApplicationRecord
  self.table_name = 'pokedex'
  has_many :pokemon_selections
end
