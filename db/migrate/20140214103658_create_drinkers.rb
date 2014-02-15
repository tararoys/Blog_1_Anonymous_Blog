class CreateDrinkers < ActiveRecord::Migration
  def change
    create_table :drinkers do |t|
      t.string :name
      t.integer :phone_number
      t.timestamps
    end
  end
end
