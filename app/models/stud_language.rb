class StudLanguage < ActiveRecord::Base
belongs_to :user
belongs_to :written
#belongs_to :language
belongs_to :spoken
end
