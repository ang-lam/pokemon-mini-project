class PokemonsController < ApplicationController
    def index
        #all pokemon listed with number and links to show page
        @pokemons = Pokemon.all
    end

    def show
        #show page for individual pokemon
        @pokemon = Pokemon.find_by(id: params[:id])
    end
end
