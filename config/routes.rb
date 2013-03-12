SisV5::Application.routes.draw do
  resources :eval_by_akademic_svs
  match '/academic_svs' ,:to=>'eval_by_akademic_svs#index'
  resources :eval_by_industry_svs
  match '/industry_svs' ,:to=>'eval_by_industry_svs#index'
  resources :buttons
  post 'add_button' => 'buttons#create'
  resources :eval_industry_svs
  post 'eval_form' => 'eval_industry_svs#create'

  resources :languages

  resources :language_opts

  resources :employability_skills

  resources :section_c8s

  resources :section_c7s

  resources :section_c6s

  resources :section_c5s

  resources :section_c4s

  resources :section_c3s

  resources :section_c2s

  resources :section_c1s

  resources :section_ds

  resources :section_cs

  resources :agree_levels

  resources :section_bs

  resources :employer_traits

  resources :impact_internships

  resources :innovative_outcomes

  resources :learning_skills

  resources :technology_skills

  resources :plannings

  resources :s_managements

  resources :p_solvings

  resources :t_skills

  resources :c_skills

  resources :e_skills

  resources :p_attributes

  get "confirmation_letters/show"

  get "confirmation_letters/edit"

  get "confirmation_letter/show"

  get "confirmation_letter/edit"

  resources :markah_students

  resources :greds

  resources :date_visits

  resources :campus

  resources :kampus

  resources :cawangans

  resources :sesis

  resources :student_classes

  resources :action_statuses

  resources :benefits

  resources :stud_descriptions

  resources :relationships

  resources :education_backgrounds

  resources :working_experiences

  resources :education_histories

  resources :available_internships

  resources :requirements

  resources :allowances

  resources :sem_internships

  resources :durations

  resources :prog_codes

  resources :prog_names

  resources :locations

  resources :log_books

  get "offer_letters/show"

  get "offer_letters/edit"

  get "resume/show"

  get "resume/index"

  resources :user_companies

  get "iklan/show"

  get "iklan/edit"

  get "iklan/index"

  resources :marital_statuses

  resources :statuses

  get "pages/index"

  get "pages/student"

  get "pages/company"

  get "pages/staff"

  resources :stud_edus

  resources :students

  get "sessions/new"

  resources :companies

  resources :numbers

  resources :comp_advs

  resources :comp_profiles

  resources :staffs

  resources :stud_profiles

  resources :stud_internships

  resources :stud_languages

  resources :stu_edus

  resources :stud_custodians

  resources :stud_pref_locations

  resources :stud_skills

  resources :stud_references

  resources :stud_adds

  get "users/new"

  get "pages/home"

  get "pages/about"

  get "pages/contact"

  get "pages/help"
   get "pages/search_student"

  resources :roles

  resources :staff_types

  resources :gelarans

  resources :results

  resources :intership_periods

  resources :code_programs

  resources :faculties

  resources :programs

  resources :states

  resources :sectors

  resources :industries

  resources :clusters

  resources :genders
  
  resources :iklan
  
  resources :resume
  
  resources :offer_letters
  resources :confirmation_letters
  
    #-------pages--------
match '/language',:to=>'language#new'	
  match '/help',:to=>'pages#help'
  match '/contact',:to=>'pages#contact'
  match '/about', :to=>'pages#about'
  match '/profile',:to=>'pages#profile'
  match '/pelajar',:to=>'pages#student'
  match '/syarikat',:to=>'pages#company'
  match '/pensyarah',:to=>'pages#staff'
  match '/reminder',:to=>'pages#reminder'
  match '/search_student',:to=>'pages#student_all'
  match '/markah',:to=>'pages#search_student'
  match '/kelas',:to=>'pages#search_class'
  match '/internship',:to=>'pages#internship'
  match '/view_markah',:to=>'pages#markah_student'
  match '/view_student',:to=>'stud_profiles#index'
  match '/', :to=>'pages#home'
  match '/index', :to=>'pages#home'
  match '/company_student', :to=>'pages#company_student'
  match '/date_visit/student/:student' => 'date_visits#index' , :as => :visit_student
  root :to=>'pages#home'
  #--------------------
  #--------users--------
  resources :users
  match '/signup' ,:to=>'users#new'

  #---------------------
  #--------sessions------
  resources :sessions, :only=>[:new, :create, :destroy]
  match '/signin', :to=>'sessions#new'
  match '/signout' ,:to=>'sessions#destroy'
  #-
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
