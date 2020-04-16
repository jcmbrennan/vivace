class Tutor < ApplicationRecord
	validates_presence_of :name, :category
	belongs_to :lesson

	extend FriendlyId
	friendly_id :name, use: :slugged
end
