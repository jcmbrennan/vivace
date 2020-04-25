class Lesson < ApplicationRecord
	validates_presence_of :title, :price, :category_name, :start_date, :duration, :tutor_name

	belongs_to :category
	belongs_to :tutor

	extend FriendlyId
	friendly_id :title, use: :slugged

	mount_uploader :image_url, CourseUploader

	after_initialize :set_defaults

	def set_defaults
		self.image_url ||= "http://placehold.it/350x200"
	end

	def self.by_position
		order("position ASC")
	end
end 
