# frozen_string_literal: true

class AddVehicleToRoutes < ActiveRecord::Migration[5.0]
  def change
    add_reference :routes, :vehicle, foreign_key: true
  end
end
