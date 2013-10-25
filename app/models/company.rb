class Company < ActiveRecord::Base
resourcify
has_many :tiers
has_many :companies, :through => :tiers
has_many :inverse_tiers, :class_name => "Tier", :foreign_key => "tier_id"
has_many :inverse_companies, :through => :inverse_tiers, :source => :company

has_many :admins, :class_name => "User"
has_many :notification_recipients, :class_name => "User"
has_many :courses
has_many :groups
end
