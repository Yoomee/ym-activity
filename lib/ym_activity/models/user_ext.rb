module YmActivity::UserExt
  
  def self.included(base)
    base.has_many :activity_items, :dependent => :destroy
  end
  
  def record_activity!(resource_or_string, options = {})
    if resource_or_string.is_a?(String)
      activity_items.create(options.merge(:text => resource_or_string))
    else
      activity_items.create(options.merge(:resource => resource_or_string))
    end
  end
  
end
