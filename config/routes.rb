Rails.application.routes.draw do
    resources :topics do
      resources :posts, except: [:index]
    end

    resources :users, only: [:new, :create]

    resources :advertisements

    resources :questions

   get 'about' => 'welcome#about'

  get "welcome/contact"

  get "welcome/faq"

  root 'welcome#index'
end
