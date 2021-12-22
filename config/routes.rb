Rails.application.routes.draw do
  post '', to: 'static_pages#results', as: :results

  root 'static_pages#home'
end
