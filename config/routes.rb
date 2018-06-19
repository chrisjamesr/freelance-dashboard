Rails.application.routes.draw do
   root 'sessions#create'
  # get '/auth/:provider/callback', to: 'sessions#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users, :only => [:create, :show,:index, :update]

  resources :clients , :only => [:create, :show, :update]

  resources :projects, :only => [:index, :show, :create, :update, :destroy] do
    resources :tasks, :only => [:index, :show, :create, :update]
  end

  resources :tasks, :only => [:index, :show, :create, :update, :destroy] do
    resources :notes, :only => [:create, :update, :destroy]
  end
end
