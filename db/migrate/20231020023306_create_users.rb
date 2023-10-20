# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table(:users) do |t|
      t.string(:name)
      t.string(:email, null: false)
      t.bigint(:role, default: 0, null: false)
      t.bigint(:grade)
      t.decimal(:rate, precision: 10, scale: 2)
      t.timestamps
    end

    add_index(:users, :email, unique: true)
  end
end
