class CreateNormalEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :normal_evaluations do |t|
      t.integer :evaluator_id, :null => false
      t.integer :evaluatee_id, :null => false
      t.timestamps
    end
  end
end
