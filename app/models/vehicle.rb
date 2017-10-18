# frozen_string_literal: true

# == Schema Information
#
# Table name: vehicles
#
#  id           :integer          not null, primary key
#  name         :string
#  trademark_id :integer
#  plate        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Vehicle < ApplicationRecord
  belongs_to :trademark
  has_many :routes
  validates :name, presence: true
  validates :plate, presence: true
end
