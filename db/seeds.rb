require 'faker'
#response will be a string
# response = RestClient.get("https://pokeapi.co/api/v2/pokemon?limit=151")
# #we parse it into a hash
# pokemons = JSON.parse(response)["results"]#add number at end for pokemon

# pokemons.each do |pokemon|
#     Pokemon.create(name: pokemon["name"])
# end

#In rails, we take API data and turn it into ruby objects

#best practice is to call API through the models (logic)

#----------------------------Seeded Data--------------------------------
# Pokemon.get_data

# num_trainer = 10
# num_trainer.times do
#     params = {
#         name: Faker::Name.name
#     }
#     Trainer.create(params)
# end


#-----------------------------------------------------------------------

