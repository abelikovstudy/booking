Rails.application.routes.draw do
  get  '/hotels', to: 'hotel#index'
  root 'pages#index'

end
