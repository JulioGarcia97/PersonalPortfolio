Rails.application.routes.draw do
  
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_up: 'register', sign_out: 'logout'}
  
  resources :portfolios, except: [:show]

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' # aqui aparte de pasarle una url que nosotros quisimos con as: le pasamos por string el prefix del path que queremos que tome esa url

  get 'about-me', to: 'pages#about' # personalizamos el route para solo tener que poner /about en vez de pages/about

  get 'contact', to: 'pages#contact' # personalizamos el route para solo tener que poner /contact en vez de pages/contact

  resources :blogs do
  	member do
  		get :toggle_status # Le pasamos una nueva ruta dentro de blogs
  	end
  end

  root 'pages#home'
end
