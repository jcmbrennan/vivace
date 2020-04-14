class RemoveTutorIdFromTutors < ActiveRecord::Migration[6.0]
  def change

    remove_column :tutors, :tutorID, :string
  end
end
