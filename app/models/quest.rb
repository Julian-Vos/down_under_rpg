class Quest < ApplicationRecord
  CATEGORIES = %w(plans culture nature locations).freeze

  validates :category, inclusion: { in: CATEGORIES }
  validates :description, presence: true
  validates :experience, numericality: { only_integer: true }
end
