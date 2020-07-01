require 'workarea/legacy_javascript'

module Workarea
  module LegacyJavascript
    class Engine < ::Rails::Engine
      include Workarea::Plugin
    end
  end
end
