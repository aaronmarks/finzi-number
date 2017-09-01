class AddLineToGames < ActiveRecord::Migration
  def change
    add_column :games, :line, :integer
  end
end
