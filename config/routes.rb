Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'portal#home'

  #User Methods

  get 'users/:id/confirmation', to: 'users#confirmation'

end
