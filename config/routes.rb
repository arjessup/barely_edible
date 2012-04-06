BarelyEdible::Application.routes.draw do
  get "users/new"
  
  match '/signup', :to => 'users#new'
  resources :bookmarks
  match '/new', :to => 'bookmarks#new'
  match '/index', :to => 'bookmarks#index'

  root :to => 'bookmarks#home'

end
