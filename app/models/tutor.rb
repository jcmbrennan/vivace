class Tutor < ApplicationRecord
	validates_presence_of :name, :category
end
