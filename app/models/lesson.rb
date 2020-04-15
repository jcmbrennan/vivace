class Lesson < ApplicationRecord
	validates_presence_of :title, :price, :category_name, :start_date, :duration, :tutor_name

	belongs_to :category

	after_initialize :set_defaults

	def set_defaults
		self.image_url ||= "http://placehold.it/350x200"
	end
end 
