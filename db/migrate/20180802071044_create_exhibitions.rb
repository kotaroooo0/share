class CreateExhibitions < ActiveRecord::Migration[5.1]
  def change
    create_table :exhibitions do |t|
      t.string  :name,        :null => false
      t.string  :user_id,     :null => false
      t.integer :price,       :null => false
      t.string  :lecture,     :null => false
      t.string  :condition,   :null => false
      t.string  :discription, :null => false
      t.boolean :sellout,     :null => false, default: true
      t.timestamps
    end
  end
end
