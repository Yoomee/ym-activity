require 'ym_core'
require 'ym_users'
require "ym_activity/engine"

module YmActivity
end

Dir[File.dirname(__FILE__) + '/ym_activity/models/*.rb'].each {|file| require file }