module DefaultPageContent
	extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end

	def set_page_defaults
		@page_title = "Vivace | Book Music Lessons"
		@seo_keywords = "Music Lessons Booking Teaching Learning Guitar Keyboards Piano Woodwind Strings Brass Percussion Drums Bass"
	end
end