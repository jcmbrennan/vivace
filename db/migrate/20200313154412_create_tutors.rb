class CreateTutors < ActiveRecord::Migration[6.0]
  def change
    create_table :tutors do |t|
      t.integer :tutorID
      t.string :tutor_name
      t.text :tutor_desc
      t.string :tutor_category
      t.string :image_url

      t.timestamps
    end
  end
end
