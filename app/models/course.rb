class Course < ActiveRecord::Base
resourcify
belongs_to  :company
has_many    :students, :class_name => "User"
end
