Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books do
    resources :book_comments
    resource :favorites
  end
  resources :users
  get 'home/about' => 'homes#about', as: 'about'
end
