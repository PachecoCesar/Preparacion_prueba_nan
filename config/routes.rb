Rails.application.routes.draw do
  resources :projects
  resources :people
  resources :assignments

  delete 'assigments/:person_id/:project_id', to: 'assignments#destroy', as: 'remove_person_from_project'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'projects#index'
end
