class CreateBadEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :bad_evaluations do |t|
      t.integer :purchase_id, :null => false
      t.timestamps
    end
  end
end
