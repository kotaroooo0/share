class RemovePriceToItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :price, :integer
  end
end
