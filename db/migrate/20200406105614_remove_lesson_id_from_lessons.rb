class RemoveLessonIdFromLessons < ActiveRecord::Migration[6.0]
  def change

    remove_column :lessons, :lessonID, :string
  end
end
