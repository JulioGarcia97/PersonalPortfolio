module DefaultContentPage
	extend ActiveSupport::Concern

	included do
		before_action :set_page_content
	end

	def set_page_content
		@page_title = "Personal Portfolio | My Portfolio Website"
	end
end