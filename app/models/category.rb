class Category < ApplicationRecord
	validates_presence_of :title, :image

	has_many :lessons
end
