Rails.application.routes.draw do
  get "/" => "site#home"
  get "/contact" => "site#contact"

  resources :users do
    resources :product
  end
end
