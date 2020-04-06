class ChangeColumnNameForCategory < ActiveRecord::Migration[6.0]
  def change
  	rename_column :lessons, :lesson_category, :category
  end
end
