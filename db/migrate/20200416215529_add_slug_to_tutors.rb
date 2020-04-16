class AddSlugToTutors < ActiveRecord::Migration[6.0]
  def change
    add_column :tutors, :slug, :string
    add_index :tutors, :slug, unique: true
  end
end
