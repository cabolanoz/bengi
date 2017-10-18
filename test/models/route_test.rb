# frozen_string_literal: true

# == Schema Information
#
# Table name: routes
#
#  id         :integer          not null, primary key
#  latitude   :decimal(10, 8)
#  longitude  :decimal(10, 8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  vehicle_id :integer
#

require 'test_helper'

class RouteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
