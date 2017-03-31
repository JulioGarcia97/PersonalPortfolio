module DeviseCustoms
	extend ActiveSupport::Concern

	included do
		before_action :devise_attributes, if: :devise_controller?
	end

	def devise_attributes
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end
end