Rails.application.routes.draw do
  get  '/hotels', to: 'hotel#index'
  get  '/hotels/new', to: 'hotel#new'
  post '/hotels', to: 'hotel#create'
  root 'pages#index'

end
