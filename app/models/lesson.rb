# frozen_string_literal: true

class Lesson < ApplicationRecord
  # Associations
  belongs_to :recurrence, optional: true

  # Validations
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :rate, presence: true
end
