Rails.application.routes.draw do
  
  resources :portfolios, except: [:show]

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' # aqui aparte de pasarle una url que nosotros quisimos con as: le pasamos por string el prefix del path que queremos que tome esa url

  get 'about-me', to: 'pages#about' # personalizamos el route para solo tener que poner /about en vez de pages/about

  get 'contact', to: 'pages#contact' # personalizamos el route para solo tener que poner /contact en vez de pages/contact

  resources :blogs

  root 'pages#home'
end
