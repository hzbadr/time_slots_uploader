Rails.application.routes.draw do
  resources :attachments, only: [:create]
end
