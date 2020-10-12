Rails.application.routes.draw do
  # get 'home_page/index'
  # get 'employees/index'
  # get 'groups/index'
  # get 'departments/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home_page#index"

  resources :departments
  resources :employees
  resources :groups
  resources :home_page
end
