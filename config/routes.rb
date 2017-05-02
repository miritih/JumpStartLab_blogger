Rails.application.routes.draw do
<<<<<<< HEAD
resources :articles do
  resources :comments
end
  resources :authors
=======
  resources :articles do
    resources :comments
  end
>>>>>>> 2f8ecb0c9406ac5539db0c686d715f575f741747
  resources :tags
  resources :author_sessions, only: [ :new, :create, :destroy ]
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
<<<<<<< HEAD
  root to: 'articles#index'
=======
  resources :authors
  root to: 'articles#index'

>>>>>>> 2f8ecb0c9406ac5539db0c686d715f575f741747
end
