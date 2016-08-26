# == Schema Information
#
# Table name: routes
#
#  id         :integer          not null, primary key
#  latitude   :decimal(10, 8)
#  longitude  :decimal(10, 8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Route < ApplicationRecord
  validates :latitude, presence: true, numericality: { greater_than: 0 }
  validates :longitude, presence: true, numericality: { greater_than: 0 }
end
