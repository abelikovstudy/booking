Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'users/new'
  get 'users/create'
  get  '/hotels', to: 'hotel#index'
  get  '/hotels/new', to: 'hotel#new'
  get  '/hotels/:id/edit', to: 'hotel#edit', as: 'edit'
  patch  '/hotels/:id', to: 'hotel#update'
  post '/hotels', to: 'hotel#create'
  root 'pages#index'
  resources :users
  resources :sessions
end
