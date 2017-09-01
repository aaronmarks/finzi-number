class CreateSpreads < ActiveRecord::Migration
  def change
    create_table :spreads do |t|

      t.timestamps null: false
    end
  end
end
