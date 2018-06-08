class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :name
      t.integer :age
      t.integer :sex
      t.string  :email
      t.string  :password_digest
      t.string  :picture
      t.timestamps
    end
  end
end
