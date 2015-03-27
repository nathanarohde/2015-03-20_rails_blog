Rails.application.routes.draw do
  root :to => 'posts#index'

  resources :users, :except => [:index]
  resources :posts do
    resources :comments, :except => [:show, :index]
    resources :photos, :except => [:show,:index, :edit, :update]
  end

  get '/log-in' => 'sessions#new'
  post '/log-in' => 'sessions#create'
  get '/log-out' => 'sessions#destroy'

end
