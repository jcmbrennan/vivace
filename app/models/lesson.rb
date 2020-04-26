class Lesson < ApplicationRecord
	validates_presence_of :title, :price, :start_date, :duration, :category_id

	belongs_to :category
	belongs_to :tutor

	
	extend FriendlyId
	friendly_id :title, use: :slugged
	

	mount_uploader :image_url, CourseUploader


	def self.by_position
		order("position ASC")
	end
end 
