Rails.application.routes.draw do
  resources :events do
    resources :posts, only: [:create]  
  end

  get 'contact', to: 'static_pages#contact'

  get 'places/test'

  get 'events/js/point/:id', to: 'events#js_map'

  root 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
