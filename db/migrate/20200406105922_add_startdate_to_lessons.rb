class AddStartdateToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :start_date, :Date
  end
end
