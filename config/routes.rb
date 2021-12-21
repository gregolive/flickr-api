Rails.application.routes.draw do
  get '/:home' => 'static_pages#home'

  root 'static_pages#home'
end
