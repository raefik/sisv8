class Sesi < ActiveRecord::Base
has_many :student_classes
belongs_to :user

belongs_to :prog_name
end
