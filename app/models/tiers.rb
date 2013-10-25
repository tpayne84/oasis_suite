class Tier < ActiveRecord::Base

# Tiered company hierarchy, allowing a company to be a parent
# or a child company.
resourcify
belongs_to :parent_company, :class_name => "Company"
belongs_to :child_company, :class_name => "Company"
end
