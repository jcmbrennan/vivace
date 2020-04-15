class Tutor < ApplicationRecord
	validates_presence_of :name, :category
	belongs_to :lesson
end
