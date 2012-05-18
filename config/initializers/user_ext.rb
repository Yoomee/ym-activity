YmUsers::User.class_eval do

  class << self
    
    def included_with_ym_activity(base)
      included_without_ym_activity(base)
      base.send(:include, YmActivity::UserExt)
    end
    alias_method_chain :included, :ym_activity
    
  end
  
end
