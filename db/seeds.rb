#response will be a string
response = RestClient.get("https://pokeapi.co/api/v2/pokemon?limit=151")
#we parse it into a hash
pokemons = JSON.parse(response)["results"]#add number at end for pokemon

pokemons.each do |pokemon|
    Pokemon.create(name: pokemon["name"])
end

#In rails, we take API data and turn it into ruby objects