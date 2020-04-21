class Tutor < ApplicationRecord
	validates_presence_of :name, :category
	has_many :lessons

	extend FriendlyId
	friendly_id :name, use: :slugged
end
