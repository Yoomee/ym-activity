module YmActivity::UserExt
  
  def self.included(base)
    base.has_many :activity_items, :class_name => "YmActivity::ActivityItem", :dependent => :destroy
  end
  
  def destroy_activity!(resource)
    activity_items.where(:resource_type => resource.class.to_s, :resource_id => resource.id).destroy_all
  end
  
  def record_activity!(resource, options = {})
    activity_items.create(options.merge(:resource => resource))
  end
  
end
