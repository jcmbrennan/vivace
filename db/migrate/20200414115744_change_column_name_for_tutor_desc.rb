class ChangeColumnNameForTutorDesc < ActiveRecord::Migration[6.0]
  def change
  	rename_column :tutors,
  	:tutor_desc, :desc
  end
end
