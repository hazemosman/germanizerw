Rails.application.routes.draw do
  root 'welcome#index'

  get    'pronouns', to:'pronouns#index'
  resources :verbs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
