Rails.application.routes.draw do
  get 'pages/room_schedule'

  get 'pages/day_schedule'

  resources :lessons
  root :to => "buildings#index"

  resources :buildings do
    resources :rooms do
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
