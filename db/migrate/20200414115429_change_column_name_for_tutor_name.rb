class ChangeColumnNameForTutorName < ActiveRecord::Migration[6.0]
  def change
  	rename_column :tutors,
  	:tutor_name, :name
  end
end
