# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131118080413) do

  create_table "action_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agree_levels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "allowances", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attachments", :force => true do |t|
    t.string   "filename"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "available_internships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "adv_id"
    t.integer  "user_id"
    t.integer  "prog_name_id"
  end

  create_table "benefits", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "adv_id"
  end

  create_table "buttons", :force => true do |t|
    t.string   "name"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "c_skills", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campus", :force => true do |t|
    t.string   "name"
    t.string   "cawangan"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cawangans", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clusters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "code_programs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comp_advs", :force => true do |t|
    t.date     "adv_date"
    t.date     "exp_date"
    t.text     "about_company"
    t.integer  "requirement_id",  :default => 1
    t.integer  "level"
    t.integer  "allowance_id",    :default => 1
    t.string   "value_allowance"
    t.integer  "benefit"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status_id",       :default => 3
  end

  create_table "comp_profiles", :force => true do |t|
    t.string   "bis_type"
    t.string   "official_no"
    t.string   "email"
    t.string   "url"
    t.string   "contact_person"
    t.string   "register_no"
    t.integer  "sector_id",          :default => 18
    t.integer  "industry_id",        :default => 9
    t.integer  "cluster_id",         :default => 14
    t.text     "place"
    t.string   "postcode"
    t.string   "city"
    t.integer  "state_id",           :default => 15
    t.integer  "user_id"
    t.string   "supervisor"
    t.string   "supervisor_contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "date_visits", :force => true do |t|
    t.integer  "staff_id"
    t.date     "date"
    t.integer  "stud_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "durations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "e_skills", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "education_backgrounds", :force => true do |t|
    t.string   "institute"
    t.string   "year"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "education_level"
  end

  create_table "employability_skills", :force => true do |t|
    t.text     "expected_communication"
    t.text     "perception_communication"
    t.text     "expected_teamwork"
    t.text     "perception_teamwork"
    t.text     "expected_ps"
    t.text     "perception_ps"
    t.text     "expected_sm"
    t.text     "perception_sm"
    t.text     "expected_po"
    t.text     "perception_po"
    t.text     "expected_ts"
    t.text     "perception_ts"
    t.text     "expected_lc"
    t.text     "perception_lc"
    t.text     "expected_io"
    t.text     "perception_io"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employer_traits", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "eval_by_akademic_svs", :force => true do |t|
    t.string   "stud_name"
    t.string   "stud_id"
    t.string   "sv_name"
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.string   "p5"
    t.string   "a1"
    t.string   "a2"
    t.string   "a3"
    t.string   "a4"
    t.string   "a5"
    t.string   "a6"
    t.string   "a7"
    t.string   "a8"
    t.string   "a9"
    t.string   "l1"
    t.string   "a11"
    t.string   "l2"
    t.string   "r1"
    t.string   "r2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "r3"
    t.string   "r4"
  end

  create_table "eval_by_industry_svs", :force => true do |t|
    t.string   "stud_name"
    t.string   "stud_id"
    t.string   "sv_name"
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.string   "p5"
    t.string   "a1"
    t.string   "a2"
    t.string   "a3"
    t.string   "a4"
    t.string   "a5"
    t.string   "a6"
    t.string   "a7"
    t.string   "a8"
    t.string   "a9"
    t.string   "a10"
    t.string   "a11"
    t.string   "a12"
    t.string   "a13"
    t.string   "a14"
    t.string   "a15"
    t.string   "a16"
    t.string   "a17"
    t.string   "a18"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eval_industry_svs", :force => true do |t|
    t.string   "stud_name"
    t.string   "stud_id"
    t.string   "sv_name"
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.string   "p5"
    t.string   "a1"
    t.string   "a2"
    t.string   "a3"
    t.string   "a4"
    t.string   "a5"
    t.string   "a6"
    t.string   "a7"
    t.string   "a8"
    t.string   "a9"
    t.string   "a10"
    t.string   "a11"
    t.string   "a12"
    t.string   "a13"
    t.string   "a14"
    t.string   "a15"
    t.string   "a16"
    t.string   "a17"
    t.string   "a18"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faculties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gelarans", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "greds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "impact_internships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "innovative_outcomes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intership_periods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kampus", :force => true do |t|
    t.string   "name"
    t.string   "cawangan"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "language_opts", :force => true do |t|
    t.string   "languade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "learning_skills", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lecturer_lists", :force => true do |t|
    t.string "staffno",     :limit => 10, :null => false
    t.string "fullname",                  :null => false
    t.string "faculty",                   :null => false
    t.string "subjectcode",               :null => false
    t.string "subjectname",               :null => false
    t.string "groupname",   :limit => 6,  :null => false
    t.string "campuscode",  :limit => 10, :null => false
    t.string "contactno",   :limit => 20, :null => false
    t.string "handphoneno", :limit => 20, :null => false
    t.string "email",                     :null => false
    t.string "mykadno",     :limit => 12, :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "state_id",   :default => 15
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_books", :force => true do |t|
    t.date     "date"
    t.string   "title"
    t.text     "content"
    t.integer  "action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "company_id"
    t.integer  "stud_profile_id"
    t.string   "matric_no"
  end

  create_table "marital_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "numbers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "p_attributes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "p_solvings", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plannings", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "profile_pics", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "prog_codes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prog_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requirements", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "adv_id"
    t.integer  "user_id"
  end

  create_table "results", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "s_managements", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_bs", :force => true do |t|
    t.integer  "pa_1"
    t.integer  "pa_2"
    t.integer  "pa_3"
    t.integer  "pa_4"
    t.integer  "pa_5"
    t.integer  "pa_6"
    t.integer  "pa_7"
    t.integer  "pa_8"
    t.integer  "pa_9"
    t.integer  "pa_10"
    t.integer  "pa_11"
    t.integer  "pa_12"
    t.integer  "pa_13"
    t.integer  "pa_14"
    t.integer  "pa_15"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_bs_zzz", :force => true do |t|
    t.integer  "p_attribute_id"
    t.integer  "agree_level_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_c1s", :force => true do |t|
    t.integer  "c_skill_id"
    t.integer  "agree_level_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_c2s", :force => true do |t|
    t.integer  "t_skill_id"
    t.integer  "agree_level_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_c3s", :force => true do |t|
    t.integer  "p_solving_id"
    t.integer  "agree_level_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_c4s", :force => true do |t|
    t.integer  "s_management_id"
    t.integer  "agree_level_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_c5s", :force => true do |t|
    t.integer  "planning_id"
    t.integer  "agree_level_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_c6s", :force => true do |t|
    t.integer  "technology_skill_id"
    t.integer  "agree_level_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_c7s", :force => true do |t|
    t.integer  "learning_skill_id"
    t.integer  "agree_level_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_c8s", :force => true do |t|
    t.integer  "innovative_outcome_id"
    t.integer  "agree_level_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_cs", :force => true do |t|
    t.integer  "c_1"
    t.integer  "c_2"
    t.integer  "c_3"
    t.integer  "c_4"
    t.integer  "tw_1"
    t.integer  "tw_2"
    t.integer  "tw_3"
    t.integer  "tw_4"
    t.integer  "tw_5"
    t.integer  "tw_6"
    t.integer  "ps_1"
    t.integer  "ps_2"
    t.integer  "ps_3"
    t.integer  "ps_4"
    t.integer  "ps_5"
    t.integer  "ps_6"
    t.integer  "sm_1"
    t.integer  "sm_2"
    t.integer  "sm_3"
    t.integer  "sm_4"
    t.integer  "sm_5"
    t.integer  "po_1"
    t.integer  "po_2"
    t.integer  "po_3"
    t.integer  "po_4"
    t.integer  "ts_1"
    t.integer  "ts_2"
    t.integer  "ts_3"
    t.integer  "ts_4"
    t.integer  "lc_1"
    t.integer  "lc_2"
    t.integer  "lc_3"
    t.integer  "io_1"
    t.integer  "io_2"
    t.integer  "io_3"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_ds", :force => true do |t|
    t.integer  "d_1"
    t.integer  "d_2"
    t.integer  "d_3"
    t.integer  "d_4"
    t.integer  "d_5"
    t.integer  "d_6"
    t.integer  "d_7"
    t.integer  "d_8"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sem_internships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sesis", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_pros", :force => true do |t|
    t.string "name"
  end

  create_table "spokens", :force => true do |t|
    t.string "name"
  end

  create_table "staff_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", :force => true do |t|
    t.string   "staff_no"
    t.integer  "staff_type_id",  :default => 7
    t.integer  "gelaran_id",     :default => 9
    t.integer  "program_id",     :default => 18
    t.integer  "faculty_id",     :default => 26
    t.string   "room_no"
    t.text     "place"
    t.string   "office_no"
    t.string   "hp_no"
    t.string   "email"
    t.string   "email2"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "prog_code_id",   :default => 18
    t.integer  "prog_name_id",   :default => 18
    t.integer  "kampu_id"
    t.boolean  "validate_staff"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stud_adds", :force => true do |t|
    t.integer  "user_id"
    t.text     "place"
    t.string   "postcode"
    t.string   "city"
    t.integer  "state_id",   :default => 15
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stud_custodians", :force => true do |t|
    t.string   "name"
    t.text     "place"
    t.string   "postcode"
    t.string   "city"
    t.string   "email"
    t.string   "hp_no"
    t.string   "relationship"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id",     :default => 15
    t.string   "hp_no_2"
  end

  create_table "stud_descriptions", :force => true do |t|
    t.text     "about_me"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stud_edus", :force => true do |t|
    t.integer  "user_id"
    t.string   "cgpa"
    t.string   "current_sem"
    t.integer  "prog_name_id",     :default => 18
    t.integer  "prog_code_id",     :default => 18
    t.integer  "faculty_id",       :default => 26
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_class_id", :default => 0
    t.integer  "kampu_id"
  end

  create_table "stud_internships", :force => true do |t|
    t.integer  "duration",             :default => 0
    t.date     "sem_internship_start"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "sem_internship_end"
  end

  create_table "stud_languages", :force => true do |t|
    t.string   "language"
    t.integer  "spoken_id"
    t.string   "written_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stud_pref_locations", :force => true do |t|
    t.string   "user_id"
    t.integer  "location1"
    t.integer  "location2"
    t.integer  "location3"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stud_profiles", :force => true do |t|
    t.string   "matric_no"
    t.string   "nric"
    t.integer  "gender_id",           :default => 3
    t.string   "patient_history"
    t.string   "disease_description"
    t.string   "hp_no"
    t.string   "second_email"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "age"
    t.integer  "marital_status_id"
    t.date     "dob"
    t.integer  "staff_id"
    t.integer  "buku_log",            :default => 0
    t.integer  "penyelia",            :default => 0
    t.integer  "laporan",             :default => 0
    t.integer  "jumlah",              :default => 0
    t.integer  "gred_id"
    t.string   "catatan"
  end

  create_table "stud_references", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "occupation"
    t.string   "company"
    t.string   "contact_no"
    t.string   "email"
    t.string   "relationship"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stud_skills", :force => true do |t|
    t.string   "skill"
    t.string   "year_exp"
    t.integer  "skill_pro_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_classes", :force => true do |t|
    t.integer  "prog_name_id"
    t.integer  "prog_code_id"
    t.string   "class_name"
    t.string   "total_student"
    t.integer  "kpi_id"
    t.integer  "staff_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sesi_id"
    t.string   "tahun"
  end

  create_table "student_data", :force => true do |t|
    t.integer  "student_id"
    t.integer  "mykadno"
    t.string   "fullname"
    t.integer  "gender_id"
    t.string   "groupcode"
    t.string   "programcode"
    t.string   "facultycode"
    t.string   "campuscode"
    t.string   "contactno"
    t.string   "handphoneno"
    t.integer  "religion_id"
    t.string   "add1"
    t.string   "add2"
    t.integer  "postcode"
    t.integer  "city"
    t.integer  "state_id"
    t.string   "email"
    t.string   "cgpa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_lists", :force => true do |t|
    t.string  "studentid",   :limit => 10, :null => false
    t.string  "mykadno",     :limit => 12, :null => false
    t.string  "fullname",                  :null => false
    t.integer "gender_id",                 :null => false
    t.string  "groupcode",   :limit => 6,  :null => false
    t.string  "programcode", :limit => 6,  :null => false
    t.string  "facultycode", :limit => 10, :null => false
    t.string  "campuscode",  :limit => 10, :null => false
    t.string  "contactno",   :limit => 20, :null => false
    t.string  "handphoneno", :limit => 20, :null => false
    t.integer "religion_id",               :null => false
    t.string  "add1",                      :null => false
    t.string  "add2",                      :null => false
    t.string  "postcode",                  :null => false
    t.string  "city",                      :null => false
    t.integer "state_id",                  :null => false
    t.string  "email",                     :null => false
    t.string  "cgpa",        :limit => 10, :null => false
  end

  create_table "students", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "staff_id"
    t.integer  "kpi_id"
  end

  create_table "students_b", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "staff_id"
    t.integer  "kpi_id"
  end

  create_table "t_skills", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technology_skills", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_companies", :force => true do |t|
    t.integer  "student_id"
    t.integer  "company_id"
    t.integer  "status_id",        :default => 1
    t.integer  "quantity",         :default => 1
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "action_status_id", :default => 1
    t.integer  "total"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.integer  "role_id"
    t.integer  "admin"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fullname"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "working_experiences", :force => true do |t|
    t.string   "company"
    t.string   "year_exp"
    t.string   "working_as"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "writtens", :force => true do |t|
    t.string "name"
  end

end
