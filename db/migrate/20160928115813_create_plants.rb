class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :scientific_name
      t.integer :height
      t.integer :width
      t.integer :spacing
      t.integer :life_cycle
      t.integer :sun
      t.integer :sow_method
      t.date :direct_seed_start
      t.date :direct_seed_stop
      t.date :indoor_seed_start
      t.date :indoor_seed_stop
      t.date :transplant_start
      t.date :transplant_stop
      t.belongs_to :garden, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
