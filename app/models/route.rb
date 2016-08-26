# == Schema Information
#
# Table name: routes
#
#  id         :integer          not null, primary key
#  latitude   :decimal(10, 8)
#  longitude  :decimal(10, 8)
#  vehicle_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Route < ApplicationRecord
  belongs_to :vehicle
  validates :latitude, presence: true, numericality: { greater_than: 0 }
  validates :longitude, presence: true, numericality: { greater_than: 0 }
end
