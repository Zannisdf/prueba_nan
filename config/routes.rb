Rails.application.routes.draw do
  resources :tasks, only: %i[index show] do
    member do
      resources :completed_tasks, only: :create
      delete 'destroy_completed_task', to: 'completed_tasks#destroy'
    end
  end
  devise_for :users
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
