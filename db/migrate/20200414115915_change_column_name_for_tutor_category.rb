class ChangeColumnNameForTutorCategory < ActiveRecord::Migration[6.0]
  def change
  	rename_column :tutors,
  	:tutor_category, :category
  end
end
