Rails.application.routes.draw do
  root "taxirides#index"

  resources :taxiride
end
