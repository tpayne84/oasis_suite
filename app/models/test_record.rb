class TestRecord < ActiveRecord::Base
resourcify
belongs_to :company
belongs_to :user
belongs_to :group
belongs_to :course
end
