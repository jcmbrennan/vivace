class ChangeColumnNameForLevel < ActiveRecord::Migration[6.0]
  def change
  	rename_column :lessons, :lesson_level, :level
  end
end
