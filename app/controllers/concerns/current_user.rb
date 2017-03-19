module CurrentUser
	extend ActiveSupport::Concern

	## null object parent
  # Sobreescribimos el metodo de current_user que nos da devise
  def current_user
  	super || guest_user
  	#Super quiere decir que exactamente con los valores 
  	#del metodo original sin cambiar nada
  end

  def guest_user
  	OpenStruct.new(name: 'Not a User', first_name: 'Guest')
  	#OpenStruct te crea un nuevo data
  end
end