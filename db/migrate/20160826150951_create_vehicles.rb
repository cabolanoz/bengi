class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.references :trademark, foreign_key: true
      t.string :plate
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
