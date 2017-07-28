Rails.application.routes.draw do
  root 'static_pages#home'

  get 'corsaires', to: 'corsaires#index'

  get 'corsaires/new', to: 'corsaires#new'

  get 'corsaires/show', to: 'corsaires#show'

  get 'corsaires/edit', to: 'corsaires#edit'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
