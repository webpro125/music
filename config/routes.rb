Rails.application.routes.draw do
  # devise_for :professionals, path: '/professionals', path_names: {
  #                          sign_in: 'login',
  #                          sign_out: 'logout',
  #                          sign_up: 'registration'
  #                      },
  #            controllers: { registrations: 'professionals/registrations', sessions: 'professionals/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '/', path_names: {
                       sign_in: 'login',
                       sign_out: 'logout',
                       sign_up: 'registration'
                   },
             controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  authenticated :user do
    root 'home#profile', as: 'profile_index'
  end

  root 'home#index'

  get :choose_type, to: 'home#choose_type'
  get 'region_province/:id', to: 'home#get_region_province', as: 'get_region_province'
  get 'genre_sub_genre/:id', to: 'home#get_sub_genre', as: 'genre_sub_genre'
  get 'profile_sub_profile/:id', to: 'home#get_sub_profile', as: 'profile_sub_profile'
  namespace :listeners do
    resource :profile, only: [:new, :create]
    resources :registrations, only: [:new]
  end

  namespace :professionals do
    resources :registrations, only: [:new]
    resource :profile, only: [:new, :create]
  end
end
