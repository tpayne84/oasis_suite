class User < ActiveRecord::Base
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

belongs_to :company
belongs_to :supervisor, :class_name => "User"
has_many :groups
has_many :courses, :through => :assignments
has_many :subordinates, :through => :supervisors
has_one :inverse_supervisor, :class_name => "Supervisor", :foreign_key => "supervisor_id"
has_one :inverse_supervisor, :through => :inverse_supervisor, :source => :user
end
