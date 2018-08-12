class CreateNormalEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :normal_evaluations do |t|
      t.integer :purchase_id, :null => false
      t.timestamps
    end
  end
end
