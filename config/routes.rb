Rails.application.routes.draw do
  # Routes for the Classroom resource:
  # CREATE
  get "/classrooms/new", :controller => "classrooms", :action => "new"
  post "/create_classroom", :controller => "classrooms", :action => "create"

  # READ
  get "/classrooms", :controller => "classrooms", :action => "index"
  get "/classrooms/:id", :controller => "classrooms", :action => "show"

  # UPDATE
  get "/classrooms/:id/edit", :controller => "classrooms", :action => "edit"
  post "/update_classroom/:id", :controller => "classrooms", :action => "update"

  # DELETE
  get "/delete_classroom/:id", :controller => "classrooms", :action => "destroy"
  #------------------------------

  # Routes for the Network resource:
  # CREATE
  get "/networks/new", :controller => "networks", :action => "new"
  post "/create_network", :controller => "networks", :action => "create"

  # READ
  get "/networks", :controller => "networks", :action => "index"
  get "/networks/:id", :controller => "networks", :action => "show"

  # UPDATE
  get "/networks/:id/edit", :controller => "networks", :action => "edit"
  post "/update_network/:id", :controller => "networks", :action => "update"

  # DELETE
  get "/delete_network/:id", :controller => "networks", :action => "destroy"
  #------------------------------

  # Routes for the School resource:
  # CREATE
  get "/schools/new", :controller => "schools", :action => "new"
  post "/create_school", :controller => "schools", :action => "create"

  # READ
  get "/schools", :controller => "schools", :action => "index"
  get "/schools/:id", :controller => "schools", :action => "show"

  # UPDATE
  get "/schools/:id/edit", :controller => "schools", :action => "edit"
  post "/update_school/:id", :controller => "schools", :action => "update"

  # DELETE
  get "/delete_school/:id", :controller => "schools", :action => "destroy"
  #------------------------------

  # Routes for the Teacher_course resource:
  # CREATE
  get "/teacher_courses/new", :controller => "teacher_courses", :action => "new"
  post "/create_teacher_course", :controller => "teacher_courses", :action => "create"

  # READ
  get "/teacher_courses", :controller => "teacher_courses", :action => "index"
  get "/teacher_courses/:id", :controller => "teacher_courses", :action => "show"

  # UPDATE
  get "/teacher_courses/:id/edit", :controller => "teacher_courses", :action => "edit"
  post "/update_teacher_course/:id", :controller => "teacher_courses", :action => "update"

  # DELETE
  get "/delete_teacher_course/:id", :controller => "teacher_courses", :action => "destroy"
  #------------------------------

  # Routes for the Student_enrollment resource:
  # CREATE
  get "/student_enrollments/new", :controller => "student_enrollments", :action => "new"
  post "/create_student_enrollment", :controller => "student_enrollments", :action => "create"

  # READ
  get "/student_enrollments", :controller => "student_enrollments", :action => "index"
  get "/student_enrollments/:id", :controller => "student_enrollments", :action => "show"

  # UPDATE
  get "/student_enrollments/:id/edit", :controller => "student_enrollments", :action => "edit"
  post "/update_student_enrollment/:id", :controller => "student_enrollments", :action => "update"

  # DELETE
  get "/delete_student_enrollment/:id", :controller => "student_enrollments", :action => "destroy"
  #------------------------------

  # Routes for the Student resource:
  # CREATE
  get "/students/new", :controller => "students", :action => "new"
  post "/create_student", :controller => "students", :action => "create"
  post "/create_classroom_student", :controller => "students", :action => "create_classroom_student"

  # READ
  get "/students", :controller => "students", :action => "index"
  get "/students/:id", :controller => "students", :action => "show"

  # UPDATE
  get "/students/:id/edit", :controller => "students", :action => "edit"
  post "/update_student/:id", :controller => "students", :action => "update"
  post "update_student_classroom", :controller => "students", :action => "update_student_classroom"
  post "remove_student_classroom", :controller => "students", :action => "remove_student_classroom"

  # DELETE
  get "/delete_student/:id", :controller => "students", :action => "destroy"
  #------------------------------

  # Routes for the Teacher_enrollment resource:
  # CREATE
  get "/teacher_enrollments/new", :controller => "teacher_enrollments", :action => "new"
  post "/create_teacher_enrollment", :controller => "teacher_enrollments", :action => "create"

  # READ
  get "/teacher_enrollments", :controller => "teacher_enrollments", :action => "index"
  get "/teacher_enrollments/:id", :controller => "teacher_enrollments", :action => "show"

  # UPDATE
  get "/teacher_enrollments/:id/edit", :controller => "teacher_enrollments", :action => "edit"
  post "/update_teacher_enrollment/:id", :controller => "teacher_enrollments", :action => "update"
  post "update_teacher_classroom", :controller => "teachers", :action => "update_teacher_classroom"
 post "remove_teacher_classroom", :controller => "teachers", :action => "remove_teacher_classroom"

  # DELETE
  get "/delete_teacher_enrollment/:id", :controller => "teacher_enrollments", :action => "destroy"
  #------------------------------

  # Routes for the Teacher resource:
  # CREATE
  get "/teachers/new", :controller => "teachers", :action => "new"
  post "/create_teacher", :controller => "teachers", :action => "create"
  post "/create_classroom_teacher", :controller => "teachers", :action => "create_classroom_teacher"

  # READ
  get "/teachers", :controller => "teachers", :action => "index"
  get "/teachers/:id", :controller => "teachers", :action => "show"

  # UPDATE
  get "/teachers/:id/edit", :controller => "teachers", :action => "edit"
  post "/update_teacher/:id", :controller => "teachers", :action => "update"

  # DELETE
  get "/delete_teacher/:id", :controller => "teachers", :action => "destroy"
  #------------------------------

  devise_for :advocates
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
