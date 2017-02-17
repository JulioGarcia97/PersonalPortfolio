Rails.application.routes.draw do
  
  resources :portfolios

  get 'about-me', to: 'pages#about' # personalizamos el route para solo tener que poner /about en vez de pages/about

  get 'contact', to: 'pages#contact' # personalizamos el route para solo tener que poner /contact en vez de pages/contact

  resources :blogs

  root 'pages#home'
end
