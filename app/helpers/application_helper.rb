module ApplicationHelper
	def login_helper
	 if current_user.is_a?(User)
			link_to 'Cerrar Sesion', destroy_user_session_path, method: :delete
	 else
			(link_to 'Iniciar Sesion', new_user_session_path) + 
			'<br>'.html_safe +
			(link_to 'Crear Cuenta', new_user_registration_path)
	 end
	end

end
