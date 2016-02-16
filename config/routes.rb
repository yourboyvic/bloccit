Rails.application.routes.draw do
   resources :labels, only: [:show]

    resources :topics do
      resources :posts, except: [:index]
    end

    # #4
      resources :posts, only: [] do
    # #5
        resources :comments, only: [:create, :destroy]
      end


    resources :users, only: [:new, :create]

    resources :sessions, only: [:new, :create, :destroy]

    resources :advertisements

    resources :questions

   get 'about' => 'welcome#about'

  get "welcome/contact"

  get "welcome/faq"

  root 'welcome#index'
end
