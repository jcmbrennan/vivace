class ChangeColumnNameForPrice < ActiveRecord::Migration[6.0]
  def change
  	rename_column :lessons, :lesson_price, :price
  end
end
