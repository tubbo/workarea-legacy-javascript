require 'workarea/legacy_javascript'

module Workarea
  module LegacyJavascript
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::LegacyJavascript
    end
  end
end
