module ApplicationHelper
	def login_helper(style = '') # Le decimos que por default tendra un string vacio
	 if current_user.is_a?(GuestUser)
			(link_to 'Iniciar Sesion', new_user_session_path, class: style) + 
			' '.html_safe +
			(link_to 'Crear Cuenta', new_user_registration_path, class: style)
	 else
	 		(link_to 'Editar Cuenta', edit_user_registration_path, class: style) +
	 		' '.html_safe +
			(link_to 'Cerrar Sesion', destroy_user_session_path, method: :delete, class: style) 
	 end
	end

	# content_tag sirve para hacer codigo html de una mejor manera en vez de que este harcodeado
	def content_helper
		if session[:source]
			greeting = "Gracias por visitarme desde #{session[:source]}"
      content_tag(:p, greeting, class: 'source-greeting')
    end
    # primero le pasamos el tag que queremos que tenga
    # despues el string o la variable que queremos que ponga dentro de ese tag
    # Al final la clase si es que queramos que tenga una
    #Tambien le podemos pasar argumentos a los helpers
	end

	def copyright_helper
		@copyright = JgarciaViewTool::RenderCopyRight.copyright('JGarcia', 'Todos los derechos reservados')
	end

	def nav_items
		[
			{
				url: root_path,
				title: 'Home'
			},
			{
				url: about_me_path,
				title: 'Acerca de mi'
			},
			{
				url: contact_path,
				title: 'Contacto'
			},
			{
				url: blogs_path,
				title: 'Blog'
			},
			{
				url: portfolios_path,
				title: 'Portafolio'
			},
		]
	end

	def nav_helper(style, tag_type)
		nav_links = ''

		nav_items.each do |item|
			nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'</a>#{item[:title]}</#{tag_type}>"

		end

		nav_links.html_safe

	end

	def active?(path)
		"active" if current_page? path
	end
end
