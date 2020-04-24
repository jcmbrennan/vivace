class AddPositionToTutors < ActiveRecord::Migration[6.0]
  def change
    add_column :tutors, :position, :integer
  end
end
