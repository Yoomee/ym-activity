module YmActivity::Recordable
  
  def self.included(base)
    base.has_many :activity_items, :as => :resource, :dependent => :destroy
  end
  
end