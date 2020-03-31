class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.integer :lessonID
      t.string :lesson_title
      t.text :lesson_desc
      t.decimal :lesson_price
      t.string :image_url
      t.string :lesson_category
      t.string :lesson_level

      t.timestamps
    end
  end
end
