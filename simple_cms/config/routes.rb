Rails.application.routes.draw do

  root 'demo#index'
  get 'demo/contact_us'
  get 'demo/about_us'
  get 'demo/index'
  get 'demo/hello'

  #default route
  # get ':controller(/:action(/:id))'

end
