class Group < ActiveRecord::Base
resourcify
belongs_to :company
has_many :users
end
