Rails.application.routes.draw do
  get 'users/show_chirps', to: 'users#show_chirps', as: 'show_chirps'
  get 'users/show_comments', to: 'users#show_comments', as: 'show_comments'

  resources :comments, :chirps, :users, :comments

  root 'welcome#index'

end
