class CreateWeeklyStats < ActiveRecord::Migration
  def change
    create_table :weekly_stats do |t|
      t.integer :team_id
      t.integer :season
      t.integer :week
      t.integer :pf
      t.integer :pa

      t.timestamps null: false
    end
  end
end
