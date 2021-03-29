class AddPokemonsToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :pokemon_1, :string
    add_column :teams, :pokemon_2, :string
    add_column :teams, :pokemon_3, :string
    add_column :teams, :pokemon_4, :string
    add_column :teams, :pokemon_5, :string
    add_column :teams, :pokemon_6, :string
  end
end
