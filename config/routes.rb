Rails.application.routes.draw do
  devise_for :professionals, path: '/professionals', path_names: {
                           sign_in: 'login',
                           sign_out: 'logout',
                           sign_up: 'registration'
                       },
             controllers: { registrations: 'professionals/registrations', sessions: 'professionals/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :listeners, path: '/listeners', path_names: {
                       sign_in: 'login',
                       sign_out: 'logout',
                       sign_up: 'registration'
                   },
             controllers: { registrations: 'listeners/registrations', sessions: 'listeners/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'


  get :choose_type, to: 'home#choose_type'
  get 'region_province/:id', to: 'home#get_region_province', as: 'get_region_province'
  namespace :listeners do
    resource :profile, only: [:new, :create]
  end
end
