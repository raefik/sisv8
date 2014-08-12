SisV5::Application.routes.draw do

  resources :lecturer_lists
  match 'lecturerlisting_data' => 'lecturer_lists#lecturerlisting_data'

  resources :student_lists
  match 'studentlisting_data' => 'student_lists#studentlisting_data'

  resources :eval_by_akademic_svs
  match '/academic_svs' ,:to=>'eval_by_akademic_svs#index'
  resources :eval_by_industry_svs
  match '/industry_svs' ,:to=>'eval_by_industry_svs#index'
  resources :buttons
  post 'add_button' => 'buttons#create'
  resources :eval_industry_svs
  post 'eval_form' => 'eval_industry_svs#create'

  resources :eval_student_pres
  resources :eval_student_ends

  resources :languages

  resources :language_opts

  resources :employability_skills

  resources :agree_levels

  resources :section_bs

  resources :employer_traits

  resources :impact_internships

  resources :innovative_outcomes

  resources :plannings

  resources :s_managements

  resources :p_solvings

  resources :attachments

  resources :photos
  get "photos/show"
  get "photos/edit"
  get "photos/index"
  get 'upload_save' => 'photos#upload_save'
  get 'upload_new' => 'photos#upload_new'
  
  resources :p_attributes

  get "confirmation_letters/show"

  get "confirmation_letters/edit"

  get "confirmation_letter/show"

  get "confirmation_letter/edit"

  resources :markah_students

  resources :greds

  resources :date_visits
  
  resources :commentars
  get 'student_feedback' => 'commentars#student_feedback'
  
  resources :kampus
  match '/kampus/erase/:id',:to=>'kampus#erase'

  resources :sesis
  match '/sesis/erase/:id',:to=>'sesis#erase'
  match 'semester_data' => 'sesis#semester_data'

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
  match '/prog_names/erase/:id',:to=>'prog_names#erase'

  resources :locations

  resources :log_books
  match '/log_books/erase/:id',:to=>'log_books#erase'
  
  

  get "offer_letters/show"
  get "offer_letters/edit"



  resources :user_companies
  match 'get_student_interns' => 'user_companies#get_student_interns'
  get "iklan/show"
  get "iklan/edit"
  get "iklan/index"

  resources :marital_statuses

  resources :statuses
  
  resources :stud_edus

  resources :students

  get "sessions/new"

  resources :companies

  resources :numbers

  resources :comp_advs

  resources :comp_profiles

  resources :staffs
  match 'coordinatorlisting_data' => 'staffs#coordinatorlisting_data'
  

  resources :stud_profiles

  resources :stud_internships

  resources :stud_languages

  resources :stu_edus

  resources :stud_custodians

  resources :stud_pref_locations

  resources :stud_skills

  resources :stud_references
  
  resources :stud_adds
  
  resources :roles

  resources :staff_types

  resources :gelarans

  resources :results

  resources :intership_periods

  resources :code_programs

  resources :faculties
  match '/faculties/erase/:id',:to=>'faculties#erase'

  resources :programs

  resources :states

  resources :sectors
  match '/sectors/erase/:id',:to=>'sectors#erase'

  resources :industries
  match '/report',:to=>'industries#report' 
  match '/report_eval_academic',:to=>'industries#report_eval_academic' 
  match '/report_eval_industry',:to=>'industries#report_eval_industry' 
  match '/industries/erase/:id',:to=>'industries#erase'
  
  match '/course_report',:to=>'faculties#course_report' 

  resources :clusters

  resources :genders
  
  resources :iklan
  
  resources :resume
  get "resume/show"
  get "resume/index"
  
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
  match '/faq',:to=>'pages#faq'
  match '/', :to=>'pages#home'
  match '/index', :to=>'pages#home'
  match '/company_student', :to=>'pages#company_student'
  match '/date_visit/student/:student' => 'date_visits#index' , :as => :visit_student
  match "updatestudprof" => "pages#updatestudprofile"
  get "pages/index"
  get "pages/student"
  get "pages/company"
  get "pages/staff"
  get "pages/home"
  get "pages/about"
  get "pages/contact"
  get "pages/help"
   get "pages/search_student"
  root :to=>'pages#home'


  #--------users--------
  resources :users
  match '/signup' ,:to=>'users#new'
  match '/new_assistant_registerar' ,:to=>'users#new_assist_reg'
  match '/adminregister' ,:to=>'users#newest'
  get "users/new"


  #--------sessions------
  resources :sessions, :only=>[:new, :create, :destroy]
  match '/signin', :to=>'sessions#new'
  match '/signout' ,:to=>'sessions#destroy'
  match '/studentnew', :to=>'sessions#studentnew'

match '/home', :to=>'pages#home'

  #-JSON Profile Student
	  match '/working_exp' => 'working_experiences#working_exp'
	  match '/intern' => 'users#intern'
	  match '/locate' => 'users#locate'
	  match '/ref' => 'users#ref'
	  match '/studesc' => 'users#studesc'
	  match '/stuskill' => 'users#stuskill'
	  match '/stulang' => 'users#stulang'
	  match '/stuedu' => 'users#stuedu'
	  match '/stuback' => 'users#stuback'
	  match '/stupro' => 'users#stupro'
	  match '/stuadd' => 'users#stuadd'
	  match '/stucust' => 'users#stucust'
	match '/kp_list' => 'staffs#kp_list'
	match '/asv_list' => 'staffs#asv_list'
	match '/newstaff' => 'users#newstaff'
	match '/newcoordinator' => 'users#newcoordinator'
	match '/modnew' => 'users#modnew'
	match '/regstudent' => 'users#regstudent'
	match '/studentfind' => 'student_lists#studentfind'
	match '/studentprofind' => 'date_visits#studentprofind'
	
	match '/studentfind2' => 'student_lists#studentfind2'
	match '/stafffind' => 'lecturer_lists#stafffind'
	match '/regstudent' => 'users#regstudent'
	match '/userfind' => 'users#userfind'
	match '/registernewstudent' => 'users#registernewstudent'
	
	match '/complist', :to=>'users#complist'
	match '/studentlist', :to=>'users#studentlist'
	
	match '/compvisit', :to=>'date_visits#compvisit'
	match '/logstudent', :to=>'log_books#logstudent'
	match '/studentsuper', :to=>'stud_profiles#studentsuper'
	match '/stud_checkin', :to=>'user_companies#stud_checkin'
	match '/checkin', :to=>'user_companies#checkin'
	match '/log_sva', :to=>'log_books#log_sva'
	match '/log_svc', :to=>'log_books#log_svc'

  get '/get_logbook', :to=>'log_books#get_logbook'

end
