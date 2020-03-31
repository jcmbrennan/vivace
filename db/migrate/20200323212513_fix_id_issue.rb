class FixIdIssue < ActiveRecord::Migration[6.0]
  def change
    change_column :lessons, :lessonID, :string
    
  end

end
