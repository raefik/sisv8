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

ActiveRecord::Schema.define(:version => 20151022100653) do

  create_table "KampuFaculties", :force => true do |t|
    t.integer  "kampu_id"
    t.integer  "faculti_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "attach"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remark"
    t.string   "attach_file_name"
    t.float    "attach_file_size"
    t.string   "attach_content_type"
  end

  add_index "attachments", ["user_id"], :name => "user_id"

  create_table "available_internships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comp_adv_id"
    t.integer  "user_id"
    t.integer  "prog_name_id"
  end

  add_index "available_internships", ["comp_adv_id"], :name => "comp_adv_id"
  add_index "available_internships", ["prog_name_id"], :name => "prog_name_id"
  add_index "available_internships", ["user_id"], :name => "user_id"

  create_table "benefits", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comp_adv_id"
  end

  add_index "benefits", ["comp_adv_id"], :name => "comp_adv_id"
  add_index "benefits", ["user_id"], :name => "user_id"

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

  create_table "commentars", :force => true do |t|
    t.integer "user_id"
    t.integer "student_id"
    t.string  "remark"
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

  add_index "comp_advs", ["allowance_id"], :name => "allowance_id"
  add_index "comp_advs", ["status_id"], :name => "status_id"
  add_index "comp_advs", ["user_id"], :name => "user_id"

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

  add_index "comp_profiles", ["cluster_id"], :name => "cluster_id"
  add_index "comp_profiles", ["industry_id"], :name => "industry_id"
  add_index "comp_profiles", ["sector_id"], :name => "sector_id"
  add_index "comp_profiles", ["state_id"], :name => "state_id"
  add_index "comp_profiles", ["user_id"], :name => "user_id"

  create_table "companies", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "companies", ["user_id"], :name => "user_id"

  create_table "date_visits", :force => true do |t|
    t.integer  "staff_id"
    t.date     "date"
    t.integer  "stud_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  add_index "date_visits", ["company_id"], :name => "company_id"
  add_index "date_visits", ["staff_id"], :name => "staff_id"
  add_index "date_visits", ["stud_profile_id"], :name => "stud_profile_id"

  create_table "durations", :force => true do |t|
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

  add_index "education_backgrounds", ["user_id"], :name => "user_id"

  create_table "eval_by_akademic_svs", :force => true do |t|
    t.string   "stud_name"
    t.integer  "student_id"
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
    t.string   "r3"
    t.datetime "updated_at"
    t.string   "r4"
    t.datetime "created_at"
    t.integer  "staff_id"
    t.string   "matricno"
  end

  add_index "eval_by_akademic_svs", ["staff_id"], :name => "staff_id"
  add_index "eval_by_akademic_svs", ["student_id"], :name => "student_id"

  create_table "eval_by_industry_svs", :force => true do |t|
    t.string   "stud_name"
    t.string   "user_id"
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
    t.integer  "company_id"
  end

  create_table "eval_student_ends", :force => true do |t|
    t.integer "user_id"
    t.integer "student_id"
    t.string  "a1"
    t.string  "a2"
    t.string  "a3"
    t.string  "a4"
    t.string  "a5"
    t.string  "a6"
    t.string  "a7"
    t.string  "a8"
    t.string  "a9"
    t.string  "a10"
    t.string  "a11"
    t.string  "a12"
    t.string  "a13"
    t.string  "a14"
    t.string  "a15"
    t.string  "cc1"
    t.string  "cc2"
    t.string  "cc3"
    t.string  "cc4"
    t.string  "ct1"
    t.string  "ct2"
    t.string  "ct3"
    t.string  "ct4"
    t.string  "ct5"
    t.string  "ct6"
    t.string  "cp1"
    t.string  "cp2"
    t.string  "cp3"
    t.string  "cp4"
    t.string  "cp5"
    t.string  "cp6"
    t.string  "cs1"
    t.string  "cs2"
    t.string  "cs3"
    t.string  "cs4"
    t.string  "cs5"
    t.string  "co1"
    t.string  "co2"
    t.string  "co3"
    t.string  "co4"
    t.string  "cts1"
    t.string  "cts2"
    t.string  "cts3"
    t.string  "cts4"
    t.string  "cl1"
    t.string  "cl2"
    t.string  "cl3"
    t.string  "ci1"
    t.string  "ci2"
    t.string  "ci3"
    t.string  "d1"
    t.string  "d2"
    t.string  "d3"
    t.string  "d4"
    t.string  "d5"
    t.string  "d6"
    t.string  "d7"
    t.string  "d8"
    t.string  "remark"
  end

  create_table "eval_student_pres", :force => true do |t|
    t.integer "user_id"
    t.integer "student_id"
    t.string  "a1"
    t.string  "a2"
    t.string  "a3"
    t.string  "a4"
    t.string  "a5"
    t.string  "a6"
    t.string  "a7"
    t.string  "a8"
    t.string  "a9"
    t.string  "a10"
    t.string  "a11"
    t.string  "a12"
    t.string  "a13"
    t.string  "a14"
    t.string  "a15"
    t.string  "a16"
    t.string  "cc1"
    t.string  "cc2"
    t.string  "cc3"
    t.string  "cc4"
    t.string  "cc5"
    t.string  "ct1"
    t.string  "ct2"
    t.string  "ct3"
    t.string  "ct4"
    t.string  "ct5"
    t.string  "ct6"
    t.string  "cp1"
    t.string  "cp2"
    t.string  "cp3"
    t.string  "cp4"
    t.string  "cp5"
    t.string  "cp6"
    t.string  "cs1"
    t.string  "cs2"
    t.string  "cs3"
    t.string  "cs4"
    t.string  "cs5"
    t.string  "co1"
    t.string  "co2"
    t.string  "co3"
    t.string  "co4"
    t.string  "cts1"
    t.string  "cts2"
    t.string  "cts3"
    t.string  "cts4"
    t.string  "cl1"
    t.string  "cl2"
    t.string  "cl3"
    t.string  "ci1"
    t.string  "ci2"
    t.string  "ci3"
  end

  create_table "faculties", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lecturer_list_code"
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

  create_table "intership_periods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kampus", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code_lecturer"
  end

  add_index "kampus", ["state_id"], :name => "state_id"

  create_table "kampus_faculties", :force => true do |t|
    t.integer  "campus_id"
    t.integer  "faculti_id"
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

  create_table "lecturer_lists", :force => true do |t|
    t.string "staffno",             :limit => 10
    t.string "fullname"
    t.string "faculty_code"
    t.string "faculty_description"
    t.string "campuscode",          :limit => 10
    t.string "campus_description"
    t.string "contactno",           :limit => 20
    t.string "email"
    t.string "gred"
    t.string "mykadno",             :limit => 14
    t.string "handphoneno",         :limit => 20
  end

  create_table "locations", :force => true do |t|
    t.integer  "state_id",   :default => 15
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["state_id"], :name => "state_id"
  add_index "locations", ["user_id"], :name => "user_id"

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
    t.string   "upload_file_name"
    t.float    "upload_file_size"
    t.string   "upload_content_type"
    t.string   "upload",              :limit => 0
  end

  add_index "log_books", ["action_id"], :name => "action_id"
  add_index "log_books", ["company_id"], :name => "company_id"
  add_index "log_books", ["stud_profile_id"], :name => "stud_profile_id"
  add_index "log_books", ["user_id"], :name => "user_id"

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

  create_table "photos", :force => true do |t|
    t.string  "image"
    t.integer "user_id"
    t.string  "image_file_name"
    t.float   "image_file_size"
    t.string  "image_content_type"
  end

  add_index "photos", ["user_id"], :name => "user_id"

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

  add_index "profile_pics", ["user_id"], :name => "user_id"

  create_table "prog_names", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "faculty_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prog_names", ["faculty_id"], :name => "faculty_id"

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

  add_index "requirements", ["user_id"], :name => "user_id"

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
    t.date     "start_sesi"
    t.date     "end_sesi"
    t.integer  "prog_name_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sesis", ["prog_name_id"], :name => "prog_name_id"
  add_index "sesis", ["user_id"], :name => "user_id"

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
    t.integer  "user_id"
    t.integer  "staff_type_id",  :default => 7
    t.integer  "gelaran_id",     :default => 9
    t.string   "name"
    t.integer  "program_id",     :default => 18
    t.integer  "faculty_id",     :default => 26
    t.integer  "kampu_id"
    t.string   "room_no"
    t.text     "place"
    t.string   "office_no"
    t.string   "hp_no"
    t.string   "email"
    t.string   "email2"
    t.integer  "prog_name_id",   :default => 18
    t.boolean  "validate_staff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "staffs", ["faculty_id"], :name => "faculty_id"
  add_index "staffs", ["gelaran_id"], :name => "gelaran_id"
  add_index "staffs", ["kampu_id"], :name => "kampu_id"
  add_index "staffs", ["prog_name_id"], :name => "prog_name_id"
  add_index "staffs", ["staff_type_id"], :name => "staff_type_id"
  add_index "staffs", ["user_id"], :name => "user_id"

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

  add_index "stud_adds", ["state_id"], :name => "state_id"
  add_index "stud_adds", ["student_id"], :name => "student_id"
  add_index "stud_adds", ["user_id"], :name => "user_id"

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

  add_index "stud_custodians", ["state_id"], :name => "state_id"
  add_index "stud_custodians", ["student_id"], :name => "student_id"
  add_index "stud_custodians", ["user_id"], :name => "user_id"

  create_table "stud_descriptions", :force => true do |t|
    t.text     "about_me"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stud_descriptions", ["user_id"], :name => "user_id"

  create_table "stud_edus", :force => true do |t|
    t.integer  "user_id"
    t.string   "cgpa"
    t.string   "current_sem"
    t.integer  "prog_name_id", :default => 18
    t.integer  "faculty_id",   :default => 26
    t.integer  "kampu_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stud_edus", ["faculty_id"], :name => "faculty_id"
  add_index "stud_edus", ["kampu_id"], :name => "kampu_id"
  add_index "stud_edus", ["student_id"], :name => "student_id"
  add_index "stud_edus", ["user_id"], :name => "user_id"

  create_table "stud_internships", :force => true do |t|
    t.integer  "duration",             :default => 0
    t.date     "sem_internship_start"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "sem_internship_end"
  end

  add_index "stud_internships", ["student_id"], :name => "student_id"
  add_index "stud_internships", ["user_id"], :name => "user_id"

  create_table "stud_languages", :force => true do |t|
    t.string   "language"
    t.integer  "spoken_id"
    t.integer  "written_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stud_languages", ["spoken_id"], :name => "spoken_id"
  add_index "stud_languages", ["student_id"], :name => "student_id"
  add_index "stud_languages", ["user_id"], :name => "user_id"

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
    t.integer  "user_id"
    t.integer  "staff_id"
    t.string   "matric_no"
    t.string   "nric"
    t.integer  "gender_id",           :default => 3
    t.string   "patient_history"
    t.string   "disease_description"
    t.string   "hp_no"
    t.string   "second_email"
    t.integer  "student_id"
    t.date     "dob"
    t.integer  "gred_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
  end

  add_index "stud_profiles", ["gender_id"], :name => "gender_id"
  add_index "stud_profiles", ["gred_id"], :name => "gred_id"
  add_index "stud_profiles", ["staff_id"], :name => "staff_id"
  add_index "stud_profiles", ["state_id"], :name => "state_id"
  add_index "stud_profiles", ["student_id"], :name => "student_id"
  add_index "stud_profiles", ["user_id"], :name => "user_id"

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

  add_index "stud_references", ["student_id"], :name => "student_id"
  add_index "stud_references", ["user_id"], :name => "user_id"

  create_table "stud_skills", :force => true do |t|
    t.string   "skill"
    t.string   "year_exp"
    t.integer  "skill_pro_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stud_skills", ["student_id"], :name => "student_id"
  add_index "stud_skills", ["user_id"], :name => "user_id"

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

  add_index "student_classes", ["prog_name_id"], :name => "prog_name_id"
  add_index "student_classes", ["sesi_id"], :name => "sesi_id"
  add_index "student_classes", ["staff_id"], :name => "staff_id"
  add_index "student_classes", ["user_id"], :name => "user_id"

  create_table "student_list", :force => true do |t|
    t.string "studentid",           :limit => 10
    t.string "mykadno",             :limit => 12
    t.string "fullname"
    t.string "gender_id",           :limit => 100
    t.string "groupcode",           :limit => 10
    t.string "group_description"
    t.string "programcode",         :limit => 10
    t.string "program_description"
    t.string "facultycode",         :limit => 10
    t.string "faculty_description"
    t.string "campuscode",          :limit => 10
    t.string "campus_description"
    t.string "contactno",           :limit => 20
    t.string "handphoneno",         :limit => 50
    t.string "religion_id",         :limit => 100
    t.string "add1"
    t.string "add2"
    t.string "postcode",            :limit => 5
    t.string "city",                :limit => 100
    t.string "state_id",            :limit => 100
    t.string "email"
    t.string "cgpa",                :limit => 10
  end

  create_table "students", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "staff_id"
    t.integer  "kpi_id"
  end

  add_index "students", ["staff_id"], :name => "staff_id"
  add_index "students", ["user_id"], :name => "user_id"

  create_table "students_b", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "staff_id"
    t.integer  "kpi_id"
  end

  create_table "user_companies", :force => true do |t|
    t.integer  "student_id"
    t.integer  "company_id"
    t.integer  "status_id",        :default => 1
    t.integer  "quantity",         :default => 1
    t.integer  "user_id"
    t.integer  "action_status_id", :default => 1
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_companies", ["action_status_id"], :name => "action_status_id"
  add_index "user_companies", ["company_id"], :name => "company_id"
  add_index "user_companies", ["status_id"], :name => "status_id"
  add_index "user_companies", ["student_id"], :name => "student_id"
  add_index "user_companies", ["user_id"], :name => "user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.integer  "role_id"
    t.integer  "admin"
    t.string   "status"
    t.string   "fullname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "faculty_id"
    t.integer  "kampu_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["faculty_id"], :name => "faculty_id"
  add_index "users", ["kampu_id"], :name => "kampu_id"
  add_index "users", ["role_id"], :name => "role_id"

  create_table "working_experiences", :force => true do |t|
    t.string   "company"
    t.string   "year_exp"
    t.string   "working_as"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "working_experiences", ["user_id"], :name => "user_id"

  create_table "writtens", :force => true do |t|
    t.string "name"
  end

end
