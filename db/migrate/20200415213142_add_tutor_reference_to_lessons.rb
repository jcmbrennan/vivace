class AddTutorReferenceToLessons < ActiveRecord::Migration[6.0]
  def change
    add_reference :lessons, :tutor, foreign_key: true
  end
end
