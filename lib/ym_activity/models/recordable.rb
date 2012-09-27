module YmActivity::Recordable
  
  def self.included(base)
    base.has_many :record_activity_items, :as => :resource, :class_name => 'YmActivity::ActivityItem', :dependent => :destroy
  end
  
end