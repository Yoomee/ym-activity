module YmActivity
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include YmCore::Generators::Migration

      source_root File.expand_path("../templates", __FILE__)
      desc "Install YmActivity"

      def manifest
        copy_file "models/activity_item.rb", "app/models/activity_item.rb"
        
        # migrations must go last
        try_migration_template "migrations/create_activity_items.rb", "db/migrate/create_activity_items"
      end
      
    end
  end
end
