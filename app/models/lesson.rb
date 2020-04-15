class Lesson < ApplicationRecord
	validates_presence_of :title, :price, :category_name, :start_date, :duration, :tutor_name

	belongs_to :category
end 
