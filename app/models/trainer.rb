class Trainer < ApplicationRecord
    has_many :teams
    has_many :trainer_pokemons
    has_many :pokemons, through: :trainer_pokemons

    def cap_name
        self.name.split.map(&:capitalize).join(' ')
    end
end
