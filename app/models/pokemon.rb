class Pokemon < ApplicationRecord
    has_many :trainer_pokemons
    has_many :trainers, through: :trainer_pokemons

    #this should be class method because we are not calling it on a particular instance
    def self.get_data #scope of this method is the class
        #response will be a string
        response = RestClient.get("https://pokeapi.co/api/v2/pokemon?limit=151")
        #we parse it into a hash
        pokemons = JSON.parse(response)["results"]#add number at end for pokemon

        pokemons.each do |pokemon|
            self.create(name: pokemon["name"])
        end
    end

    def capitalize_name
        self.name.capitalize
    end
end
