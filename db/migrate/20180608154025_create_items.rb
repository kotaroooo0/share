class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string  :name,    :null => false
      t.integer :price,   :null => false
      t.string :picture,  :null => false
      t.timestamps
    end
  end
end
