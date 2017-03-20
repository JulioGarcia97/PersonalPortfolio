class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseCustoms
  include SetSource
  include CurrentUser
  include DefaultContentPage
end
