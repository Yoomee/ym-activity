require "ym_activity/engine"

module YmActivity
end

# TODO - this was in original engine - do we need it?
Dir[File.dirname(__FILE__) + '/ym_activity/models/*.rb'].each {|file| require file }
