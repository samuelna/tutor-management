# frozen_string_literal: true

class CreateRecurrences < ActiveRecord::Migration[7.1]
  def change
    create_table(:recurrences) do |t|
      t.bigint(:frequency, null: false)
      t.bigint(:count)
      t.string(:day_of_week)
      t.datetime(:until_date)
      t.timestamps
    end
  end
end
