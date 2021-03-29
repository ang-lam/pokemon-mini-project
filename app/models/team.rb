class Team < ApplicationRecord
    belongs_to :trainer
    POKEMONS = Pokemon.all.collect { |pokemon| pokemon.name.capitalize }
end
