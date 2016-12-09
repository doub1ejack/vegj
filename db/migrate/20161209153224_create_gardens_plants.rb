class CreateGardensPlants < ActiveRecord::Migration
  def change
    create_table :gardens_plants do |t|
      t.references :garden, index: true, foreign_key: true
      t.references :plant, index: true, foreign_key: true
    end
  end
end
