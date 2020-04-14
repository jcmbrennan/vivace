class Lesson < ApplicationRecord
	validates_presence_of :title, :price, :category, :start_date, :duration, :tutor_name
end 
