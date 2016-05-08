Rails.application.routes.draw do
  root 'todo#index'
  resources :todos
end
