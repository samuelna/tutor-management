# frozen_string_literal: true

class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table(:lessons) do |t|
      t.datetime(:start_time, null: false)
      t.datetime(:end_time, null: false)
      t.references(:student_id, foreign_key: { to_table: :users })
      t.references(:teacher_id, foreign_key: { to_table: :users })
      t.float(:rate, null: false)
      t.boolean(:paid, default: false)
      t.references(:recurrence_id, foreign_key: { to_table: :recurrences })
      t.timestamps
    end
  end
end
