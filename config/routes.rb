Rails.application.routes.draw do
  
  namespace :api do
    resources :users, :except => [:new, :edit, :destroy] do
      # resources :clients , :except => [:new, :edit, :destroy]
      resources :projects, :except => [:new, :edit]
      resources :tasks, :except => [:new, :edit]
      resources :notes, :except => [:new, :edit]
    end
  end
end

  # api/users/:id/projects/:id