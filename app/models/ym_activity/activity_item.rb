class YmActivity::ActivityItem < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :resource, :polymorphic => true
  belongs_to :parent_resource, :polymorphic => true
  
  validate :user, :resource, :presence => true
  
  default_scope order("created_at DESC")
  
end