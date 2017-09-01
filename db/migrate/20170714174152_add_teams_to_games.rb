class AddTeamsToGames < ActiveRecord::Migration
  def change
    add_column :games, :team_1_id, :integer
    add_column :games, :team_2_id, :integer
    add_column :games, :spread, :integer
    add_column :games, :season, :integer
    add_column :games, :week, :integer
  end
end
