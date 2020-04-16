class Category < ApplicationRecord
	validates_presence_of :title, :image

	has_many :lessons

	extend FriendlyId
	friendly_id :title, use: :slugged


end
