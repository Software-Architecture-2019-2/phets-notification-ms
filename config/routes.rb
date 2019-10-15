Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/notifications/user_notification/:id', to: 'noties#user_notification'
  get '/send_mail', to: 'mails#send_mail'
  get '/notifications/:id', to: 'noties#show'
  delete '/notifications/:id', to: 'noties#destroy'
  post '/notifications', to: 'noties#create'
  put '/notifications/:id', to: 'noties#update_state'
end
