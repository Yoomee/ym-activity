$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ym_activity/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ym_activity"
  s.version     = YmActivity::VERSION
  s.authors     = ["Matt Atkins", "Ian Mooney", "Edward Andrews"]
  s.email       = ["matt@yoomee.com", "ian@yoomee.com", "edward@yoomee.com"]
  s.homepage    = "http://www.yoomee.com"
  s.summary     = "Summary of YmActivity."
  s.description = "Description of YmActivity."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'ym_core', "~> 1.0"
  s.add_dependency "ym_users", "~> 1.1.1"

  # for testing
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'capybara-webkit'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'capybara', '~> 2.2.0'
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "ym_tools"
  s.add_development_dependency 'geminabox'

end
