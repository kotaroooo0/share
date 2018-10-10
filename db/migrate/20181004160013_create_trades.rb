class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.boolean    :is_chating, default: true
      t.references :user, foreign_key: true, null: false
      t.references :exhibition, foreign_key: true, null: false

      t.timestamps
    end
  end
end
