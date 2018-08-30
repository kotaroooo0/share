class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true, null: false
      t.references :exhibition, foreign_key: true, null: false

      t.timestamps
    end
  end
end
