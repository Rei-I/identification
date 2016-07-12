Rails.application.routes.draw do

  namespace :admin do
    
  
    get 'maketag' => 'maketag#index'
    post 'maketag/confirm' => 'maketag#confirm', as: :confirm
    resources :maketag do
      collection do
        get :product_select
        get :product_select2
      end
    end
    
    get 'product_items/download' => 'product_items#download'
    
    resources :product_items, only: [:index, :edit, :show, :new, :create, :destroy, :update]
    resources :customers, only: [:index, :edit, :show, :new, :create, :destroy, :update]
    root 'top#index'
  end
  
  namespace :guest do
    root 'top#index'
  end
end
