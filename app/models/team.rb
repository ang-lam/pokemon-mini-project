class Team < ApplicationRecord
    belongs_to :trainer
    POKEMONS = Pokemon.all.collect { |pokemon| pokemon.name.capitalize }
    TRAINERS = Trainer.all.collect { |trainer| trainer.name.split.map(&:capitalize).join(' ') }
end
