class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :name,            :null => false
      t.string  :grade,           :null => false
      t.integer :university_id,   :null => false
      t.integer :sex,             :null => false
      t.string  :email,           :null => false
      t.string  :image,           :null => false
      t.string  :introduction,    :null => false
      t.string  :password_digest, :null => false
      t.timestamps
    end
  end
end
