class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :exhibition_id, :null => false
      t.integer :purchaser_id,  :null => false
      t.timestamps
    end
  end
end
