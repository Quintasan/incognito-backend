Rails.application.routes.draw do
  resources :categories
  resources :cocktails
  root 'pages#home'
end
