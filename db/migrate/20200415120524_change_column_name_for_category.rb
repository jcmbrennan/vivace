class ChangeColumnNameForCategory < ActiveRecord::Migration[6.0]
  def change
  	rename_column :lessons, :category, :category_name
  end
end
