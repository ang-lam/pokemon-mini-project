class CreateTrainerPokemon < ActiveRecord::Migration[6.1]
  def change
    create_table :trainer_pokemons do |t|
      t.integer :trainer_id
      t.integer :pokemon_id

      t.timestamps
    end
  end
end
