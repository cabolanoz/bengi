class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.decimal :latitude, precision: 10, scale: 8
      t.decimal :longitude, precision: 10, scale: 8

      t.timestamps
    end
  end
end
