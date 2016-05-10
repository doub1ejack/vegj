class CreateGardens < ActiveRecord::Migration
  def change
    create_table :gardens do |t|
      t.string :name
      t.integer :square_feet
      t.integer :zone
      t.string :garden_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
