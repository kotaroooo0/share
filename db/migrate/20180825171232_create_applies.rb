# frozen_string_literal: true

class CreateApplies < ActiveRecord::Migration[5.1]
  def change
    create_table :applies do |t|
      t.references :user, foreign_key: true, null: false
      t.references :exhibition, foreign_key: true, null: false

      t.timestamps
    end
  end
end
