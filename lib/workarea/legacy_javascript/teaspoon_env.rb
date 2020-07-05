require 'workarea/testing/teaspoon'

Teaspoon.configure do |config|
  config.suite :admin do |suite|
    suite.root = Workarea::Admin::Engine.root
    Workarea::Teaspoon.apply(suite)
    suite.stylesheets += ['workarea/admin/application']
  end

  config.suite :core do |suite|
    suite.root = Workarea::Core::Engine.root
    Workarea::Teaspoon.apply(suite)
  end

  config.suite :storefront do |suite|
    config.root = Workarea::Storefront::Engine.root
    Workarea::Teaspoon.apply(config)
    suite.stylesheets += ['workarea/storefront/application']
  end
end
