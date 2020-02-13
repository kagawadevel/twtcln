Rails.application.routes.draw do

  root to: 'postings#index'

  resources :postings do
    collection do
      post :confirm
    end
  end

end
