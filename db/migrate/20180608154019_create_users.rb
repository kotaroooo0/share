class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :name,            :null => false
      t.integer :age,             :null => false
      t.integer :sex,             :null => false
      t.string  :email,           :null => false
      t.string  :password_digest, :null => false
      t.string  :picture,         :null => false
      t.timestamps
    end
  end
end
