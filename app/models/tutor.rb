class Tutor < ApplicationRecord
	validates_presence_of :name, :category
	has_many :lessons

	mount_uploader :image_url, CourseUploader

	extend FriendlyId
	friendly_id :name, use: :slugged

	def self.by_position
		order("position ASC")
	end
end
