Rails.application.routes.draw do
  get 'courses/new'

  get 'courses/create'

  get 'courses/update'

  get 'courses/edit'

  get 'courses/destroy'

  get 'courses/index'

  get 'courses/show'

  get 'levels/new'

  get 'levels/create'

  get 'levels/edit'

  get 'levels/update'

  get 'levels/destroy'

  get 'levels/index'

  get 'levels/show'

  get 'results/new'

  get 'results/create'

  get 'results/edit'

  get 'results/update'

  get 'results/destroy'

  get 'results/index'

  get 'results/show'

  get 'modules/new'

  get 'modules/create'

  get 'modules/edit'

  get 'modules/update'

  get 'modules/destroy'

  get 'modules/index'

  get 'modules/show'

  get 'departments/new'

  get 'departments/create'

  get 'departments/edit'

  get 'departments/update'

  get 'departments/destroy'

  get 'departments/index'

  get 'departments/show'

  get 'students/new'

  get 'students/create'

  get 'students/edit'

  get 'students/update'

  get 'students/destroy'

  get 'students/index'

  get 'students/show'

  get 'department/new'

  get 'department/create'

  get 'department/edit'

  get 'department/update'

  get 'department/destroy'

  get 'department/index'

  get 'department/show'

  root to: 'students#index'

  resources :departments
  resources :courses
  resources :results
  resources :levels
  resources :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
