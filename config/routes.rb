Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/about'
  #skip不要なルーティングを削除
  #顧客用
  devise_for :customers, skip: [:passwords], controllers:{
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  namespace :public do
    resources :addresses, only: [:index, :edit, :create, :update, :show]
  end 
  #管理者
  devise_for :admin, skip: [:registrations, :passwords], controllers:{
    sessions: "admin/sessions"
  }
  namespace :admin do
    resources :items, only: [:index, :edit, :create, :new, :show]
  end 
  scope :admin do
    resources :genres, only: [:index, :edit, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
