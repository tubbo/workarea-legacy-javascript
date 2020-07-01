$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "workarea/legacy_javascript/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "workarea-legacy_javascript"
  spec.version     = Workarea::LegacyJavascript::VERSION
  spec.authors     = ["Tom Scott"]
  spec.email       = ["tscott@weblinc.com"]
  spec.homepage    = "TODO"
  spec.summary     = "TODO: Summary of LegacyJavascript."
  spec.description = "TODO: Description of LegacyJavascript."
  spec.license     = "Business Software License"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files`.split("\n")

  spec.add_development_dependency "pg"
  spec.add_dependency 'workarea', '~> 3.x'
end
