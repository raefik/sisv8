class StudentClass < ActiveRecord::Base
belongs_to :prog_name
belongs_to :prog_code
belongs_to :sesi
belongs_to :staff
has_many :stud_edus


end
