class CreateDrinkerTeas < ActiveRecord::Migration
  def change
    create_table :drinker_teas do |table|
      table.integer :drinker_id
      table.integer :tea_id
      table.boolean :like
    end
  end
end
