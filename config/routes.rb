Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#login'

  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  get '/users', to: 'users#index'

  get '/recipes', to: 'recipes#index'
  post '/recipes', to: 'recipes#create'

  get '/favorites', to: "favorites#index"
  post '/favorites', to: "favorites#create"
  delete '/favorites/:user_id/:recipe_id', to: "favorites#destroy"

  get '/notes/:recipe_id', to: 'notes#index'
  patch '/notes/:note_id', to: 'notes#update'
  delete '/notes/:note_id', to: 'notes#destroy'
  post '/notes', to: 'notes#create'
end
