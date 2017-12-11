Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'portal#home'

  #User Methods

  get 'users/:id/confirmation', to: 'users#confirmation', as: :confirm_user
  get 'users/confirmation_required', to: 'users#confirmation_required', as: :confirmation_required

  namespace :api, defaults: {format: :json} do

    resources :users, only: [:show]
    post 'users/:id/resend_confirmation', to: 'users#resend_confirmation'
  end
end
