$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "forem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fembem-forem"
  s.version     = Forem::VERSION
  s.authors     = ["Jim"]
  s.email       = ["jim@jim.com"]
  s.homepage    = "http://www.jim.com"
  s.summary     = "Summary of Forem."
  s.description = "Description of Forem."

  #s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.files = `git ls-files`.split("\n")
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.3"
  #s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"

  s.add_development_dependency "rspec-rails", "~> 2.5"
  s.add_development_dependency "capybara"
  s.add_development_dependency "launchy"
end
