BarelyEdible::Application.routes.draw do
  resources :bookmarks
  match '/new', :to => 'bookmarks#new'
  match '/index', :to => 'bookmarks#index'

  root :to => 'bookmarks#home'

end
