class Skill < ApplicationRecord
	include Placeholder
 	validates_presence_of :title, :percent_utilized

 	# defaults instead of been in the migration
	after_initialize :set_defaults

	def set_defaults
		self.badge ||= Placeholder.image_generator(height: '250', width: '250')
	end
	
	# es lo mismo pero en una sola linea 

	# if self.main_image == nil
			# self.main_image = 'http://placehold.it/600x400'
	# end
end
