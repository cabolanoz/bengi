# frozen_string_literal: true

class RemoveRouteFromVehicle < ActiveRecord::Migration[5.0]
  def change
    remove_column :vehicles, :route_id
  end
end
