SampleApp::Application.routes.draw do
  resources :users

  root to: 'static_pages#home'
  
  match '/help',      to: 'static_pages#help'
  match '/about',     to: 'static_pages#about'
  match '/contact',   to: 'static_pages#contact'
  
  match '/signup',    to: 'users#new'
  
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
