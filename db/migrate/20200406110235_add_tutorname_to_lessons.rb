class AddTutornameToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :tutor_name, :string
  end
end
