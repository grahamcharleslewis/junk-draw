Rails.application.routes.draw do
  get 'tracker/index'
  resources :targets
  resources :people
  resources :operations_and_compliances
  resources :sales_and_finances
  resources :weeks
  root 'welcome#index'
end
