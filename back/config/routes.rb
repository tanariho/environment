Rails.application.routes.draw do
  resources :posts
  post 'auth/:provider/callback', to: 'api/v1/authentications#create'
end
