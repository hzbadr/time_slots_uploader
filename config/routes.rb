Rails.application.routes.draw do
  
  mount ActionCable.server => '/cable'

  resources :attachments, only: [:create]
end
