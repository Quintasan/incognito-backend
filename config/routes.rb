Rails.application.routes.draw do
  resources :cocktails
  root 'pages#home'
end
