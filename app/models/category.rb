class Category < ApplicationRecord
	validates_presence_of :title

	has_many :lessons

	mount_uploader :image_url, CourseUploader

	extend FriendlyId
	friendly_id :title, use: :slugged

	def self.by_position
		order("position ASC")
	end
end
