class AddPriceToUserItems < ActiveRecord::Migration[5.1]
  def change
    add_column :user_items, :price, :integer
    add_column :user_items, :condition, :string
  end
end
