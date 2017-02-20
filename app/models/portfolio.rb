class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	# Query para buscar por subtitulo usando metodo
	def self.angular
		where(subtitle: 'Angular')
	end

	# Query para buscar por subtitulo usando scope, hacen lo mismo los dos
	scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
end
