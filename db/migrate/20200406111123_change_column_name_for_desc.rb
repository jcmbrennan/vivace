class ChangeColumnNameForDesc < ActiveRecord::Migration[6.0]
  def change
  	rename_column :lessons, :lesson_desc, :desc
  end
end
