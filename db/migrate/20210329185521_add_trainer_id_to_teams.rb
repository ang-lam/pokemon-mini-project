class AddTrainerIdToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :trainer_id, :integer
  end
end
