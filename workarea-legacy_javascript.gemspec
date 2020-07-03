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
  spec.add_dependency 'lodash-rails', '~> 4.17.4'
  spec.add_dependency 'jquery-rails', '~> 4.3.1'
  spec.add_dependency 'jquery-ui-rails', '~> 6.0.1'
  spec.add_dependency 'tooltipster-rails', '~> 4.2.0'
  # spec.add_dependency 'chart-js-rails', '~> 0.0.9' # TODO remove v4
  # spec.add_dependency 'chart-horizontalbar-rails', '~> 1.0.4' # TODO remove v4
  spec.add_dependency 'select2-rails', '~> 4.0.3'
  spec.add_dependency 'wysihtml-rails', '~> 0.6.0.beta2'
  # spec.add_dependency 'jquery-livetype-rails', '~> 0.1.0' # TODO remove v4
  spec.add_dependency 'jquery-unique-clone-rails', '~> 1.0.0'
  spec.add_dependency 'avalanche-rails', '~> 1.2.0'
  spec.add_dependency 'tribute', '~> 3.6.0.0'
  spec.add_dependency 'jquery-validation-rails', '~> 1.19.0'
  spec.add_dependency 'waypoints_rails', '~> 4.0.1'
  spec.add_dependency 'spectrum-rails', '~> 1.8.0'
  spec.add_dependency 'serviceworker-rails', '~> 0.6.0'
  spec.add_dependency 'webcomponentsjs-rails', '~> 0.7.12'
  spec.add_dependency 'strftime-rails', '~> 0.9.2'
  spec.add_dependency 'featurejs_rails', '~> 1.0.1'
end
