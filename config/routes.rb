Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :course_modules
  resources :generating_theme_sugestions
  resources :activity_sugestions
  resources :teachers
  resources :courses
  resources :study_units
  resources :course_module_study_units
  resources :strategies
  resources :specific_technical_competences
  resources :course_modules, only: [:index]
  resources :evidences
  resources :meetings
  resources :plane_classrooms do
    resources :meetings
  end
  resources :teachers
  resources :generating_themes
  resources :teacher_generating_themes
  resources :teacher_activities
  resources :methodologies
  resources :relationships
  resources :specific_skills
  resources :resources
  resources :activities
  get 'home/index'

  resources :verbs
  resources :attitudinal_skills
  resources :categories
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'plane_classrooms#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
