Rails.application.routes.draw do

  get 'test/index'
  get '/testing', to: 'test#index'
  get 'test/show'
  get 'test/new'
  get 'test/edit'
  root 'demo#index'

  get 'demo/index'
  get 'demo/hello'

  # default route
  # may go away in future versions of Rails
  # get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
