class AddSlugToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :slug, :string
  end
end
