$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "workarea/legacy_javascript/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "workarea-legacy_javascript"
  spec.version     = Workarea::LegacyJavascript::VERSION
  spec.authors     = ["Tom Scott"]
  spec.email       = ["tscott@weblinc.com"]
  spec.homepage    = 'https://workarea.com'
  spec.summary     = 'Legacy JavaScript modules from the core Workarea platform'
  spec.description = 'Legacy JavaScript modules from the core Workarea platform'
  spec.license     = "Business Software License"
  spec.files = `git ls-files`.split("\n")

  spec.add_dependency 'workarea', '~> 3.x'
end
