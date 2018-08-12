class CreateBadEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :bad_evaluations do |t|
      t.integer :evaluator_id, :null => false
      t.integer :evaluatee_id, :null => false
      t.timestamps
    end
  end
end
