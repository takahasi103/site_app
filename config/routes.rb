Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/about'
  #skip不要なルーティングを削除
  #顧客用
  devise_for :customers, skip: [:passwords], controllers:{
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  #管理者
  devise_for :admin, skip: [:registrations, :passwords], controllers:{
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
