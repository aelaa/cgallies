Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'static#main'

  get 'news' => 'static#news'
  get 'streams' => 'static#streams'
  get 'faq' => 'static#faq'
  get 'login' => 'sessions#new'

  resources :battles, only: [:index, :show]

  # resources :users

  # namespace :admin do
  #   root to: 'battles#index'

  #   resources :battles
  #   resources :news_articles, path: :news
  #   resources :battle_works
  # end

  namespace :api do
    resource :session, only: [:create, :destroy]
  #   resources :battle_works, only: :create
  end
end
