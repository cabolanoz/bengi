# frozen_string_literal: true

# == Schema Information
#
# Table name: trademarks
#
#  id         :integer          not null, primary key
#  name       :string
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trademark < ApplicationRecord
  validates :name, presence: true
  validates :status, inclusion: { in: [true, false] }
  scope :enabled, -> { where(status: true) }
  scope :disabled, -> { where(status: false) }
end
