 class Portfolio < ApplicationRecord
 	has_many :technologies
 	accepts_nested_attributes_for :technologies,
 															 reject_if: lambda {|attr| attr['name'].blank?}
 	# lo que le decimos aqui es que acepte los campos de tecnologies, despues con reject_if ... le decimos que no lo acepte amenos que el campo nombre contenga algo 

	include Placeholder # este viene de concerns
	validates_presence_of :title, :body, :main_image, :thumb_image

	# Query para buscar por subtitulo usando metodo
	def self.angular
		where(subtitle: 'Angular')
	end

	# Query para buscar por subtitulo usando scope, hacen lo mismo los dos
	scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

	# defaults instead of been in the migration
	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
	
	# es lo mismo pero en una sola linea 

	# if self.main_image == nil
			# self.main_image = 'http://placehold.it/600x400'
	# end
end
