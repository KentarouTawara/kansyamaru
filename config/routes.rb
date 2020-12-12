Rails.application.routes.draw do
  root to: 'post#new'
  resources :posts
end
