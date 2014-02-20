class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |table|
      table.integer :drinker_id
      table.integer :tea_id
      table.boolean :liked_the_tea
      table.timestamps
    end
  end
end
