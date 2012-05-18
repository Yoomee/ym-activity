module YmActivity::UserExt
  
  def self.included(base)
    base.has_many :activity_items, :class_name => "YmActivity::ActivityItem"
  end
  
  def record_activity!(resource, options = {})
    activity_items.create(options.merge(:resource => resource))
  end
  
end
