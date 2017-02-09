Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root to: 'top#index'
  resources :products
end
