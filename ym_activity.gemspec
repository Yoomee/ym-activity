$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ym_activity/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ym_activity"
  s.version     = YmActivity::VERSION
  s.authors     = ["Matt Atkins", "Ian Mooney", "Edward Andrews", "David Thompson"]
  s.email       = ["matt@yoomee.com", "ian@yoomee.com", "edward@yoomee.com", "david@yoomee.com"]
  s.homepage    = "http://www.yoomee.com"
  s.summary     = "Summary of YmActivity."
  s.description = "Description of YmActivity."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  # s.add_dependency 'ym_core'

  # s.add_development_dependency "ym_test"
  s.add_development_dependency "sqlite3"

end
