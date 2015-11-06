Rails.application.routes.draw do
  resources :topics, only:[:show] do
    resources :flash_cards, only: [:new,:create,:show]
  end 
end
