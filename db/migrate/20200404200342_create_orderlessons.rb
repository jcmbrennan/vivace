class CreateOrderlessons < ActiveRecord::Migration[6.0]
  def change
    create_table :orderlessons do |t|
      t.integer :lesson_id
      t.string :title
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
