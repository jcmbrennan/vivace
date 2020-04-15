class AddCategoryReferenceToLessons < ActiveRecord::Migration[6.0]
  def change
    add_reference :lessons, :category, foreign_key: true
  end
end
