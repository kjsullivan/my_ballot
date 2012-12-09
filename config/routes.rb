MyBallot::Application.routes.draw do
  
  resources :comments

  resources :positions

  resources :users

  get "/login" => 'Sessions#new', :as => 'login'

  post "/sessions" => 'Sessions#create'

  get "/logout" => 'Sessions#destroy', :as => 'logout'

  root :to => 'Pages#home'
  
  get "/" => 'Pages#home', :as => 'home'

  post "/ballot" => 'Pages#createballot'

  get "/ballot" => 'Pages#ballot', :as => 'ballot'

  get "/candidate" => 'Pages#candidatebio', :as => 'candidatebio'

  get "/resources" => 'Pages#resources', :as => 'resources'

  get "/about" => 'Pages#about', :as => 'about'

  get "/users/update_votes"  => 'Users#votes', :as => 'vote'
  
end
