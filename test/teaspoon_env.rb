require 'workarea/testing/teaspoon'

Teaspoon.configure do |config|
  config.root = Workarea::LegacyJavascript::Engine.root
  Workarea::Teaspoon.apply(config)
end
