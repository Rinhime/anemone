Rails.application.routes.draw do
  
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  
  root to: 'home#top'
  namespase :public do
    get "customers/show/" => "customers#show"
  end
  
  # 管理者用
  # URL /admins/sign_in ...
  devise_for :admins, controllers: {
    sessions: "admin/sessions"
  }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
