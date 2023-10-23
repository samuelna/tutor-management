# frozen_string_literal: true

class Recurrence < ApplicationRecord
  # Associations
  has_many :lessons

  # Validations
  validates :frequency, presence: true
end
