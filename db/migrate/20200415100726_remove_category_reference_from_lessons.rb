class RemoveCategoryReferenceFromLessons < ActiveRecord::Migration[6.0]
  def change
    remove_reference :lessons, :category, null: false, foreign_key: true
  end
end
