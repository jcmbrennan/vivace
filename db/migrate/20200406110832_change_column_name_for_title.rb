class ChangeColumnNameForTitle < ActiveRecord::Migration[6.0]
  def change
  	rename_column :lessons, :lesson_title, :title
  end
end
