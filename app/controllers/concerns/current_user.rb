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
  	guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.email = "guest@gmail.com"
    guest
  end
end