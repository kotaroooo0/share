class AddApplyCountToExhibition < ActiveRecord::Migration[5.1]
  def change
    add_column :exhibitions, :apply_count, :integer, default: 0
  end
end
