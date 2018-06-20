Rails.application.routes.draw do
  
  
  namespace :api do
    post 'user_token' => 'user_token#create'
      resources :projects, :except => [:new, :edit]
      resources :tasks, :except => [:new, :edit]
      resources :notes, :except => [:new, :edit]
    end
  end
end

  # api/users/:id/projects/:id