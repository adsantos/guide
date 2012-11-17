Guide::Application.routes.draw do
  resources :guide_items
  resources :questions

  get "home/index"
  get 'tags/:tag', to:'guide_items#index', as: :tag

  root :to => 'guide_items#index'
end
