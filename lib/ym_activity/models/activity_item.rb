module YmActivity::ActivityItem
  
  def self.included(base)
    base.belongs_to :user
    base.belongs_to :resource, :polymorphic => true
    base.belongs_to :parent_resource, :polymorphic => true
    base.validate :user, :presence => true
    base.send(:extend, ClassMethods)
  end
  
  module ClassMethods
    
    def default_scope
      order("created_at DESC")
    end
    
  end
  
end