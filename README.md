Workarea Legacy Javascript
================================================================================

This plugin holds all of the legacy `WORKAREA` JavaScript modules. You
can use it to help with a v3.7 upgrade, or to rewrite your own
JavaScript code for a Stimulus future.

Overview
--------------------------------------------------------------------------------

By including the gem in your Gemfile, the legacy JS code will be added
to your application, just as you were used to from v3.5 and below. It
was designed to help you ease into the transition to Stimulus.

You can also configure certain modules to not be included in your
manifest if you wish to upgrade your own JS code. See below in the
"Configuration" section for more information about this.

Getting Started
--------------------------------------------------------------------------------

Make sure you install this gem **right below** the `workarea` gem in
your Gemfile:

    # ...
    gem 'workarea', '~> 3.7'
    gem 'workarea-legacy_javascript', '~> 1'
    # ...

Then, update your application's bundle.

    cd path/to/application
    bundle

Configuration
--------------------------------------------------------------------------------

For those who wish to upgrade their app module-by-module, all module
requirements in the manifest have been moved to
`Workarea.config.legacy_javascripts`. By removing files from these
settings, you'll be changing the manifest and thus able to work on a
module at a time. This is especially useful for plugin authors as well
as those who have overridden JavaScript code in their application. You
can rewrite these modules you've overridden as Stimulus controllers, and
disable them piece by piece here in the configuration.

For example, if you had the `WORKAREA.cartCount` module overwritten, but you
wanted to convert it into a Stimulus controller, you would first disable
the module in your configuration:

```ruby
Workarea.configure do |config|
  config.legacy_javascripts.storefront.modules.delete('workarea/storefront/modules/cart_count')
end
```

After restarting your server, the `WORKAREA.cartCount` module will no
longer be loaded. You can now re-implement its functionality in Stimulus
and the rest of your site will continue working.

To disable all legacy JS modules, set the value to an empty array:

```ruby
Workarea.configure do |config|
  config.legacy_javascripts.storefront.modules = []
end
```

For more information on this config's structure, check out [this plugin's initializer][].

Workarea Platform Documentation
--------------------------------------------------------------------------------

See [https://developer.workarea.com](https://developer.workarea.com) for Workarea platform documentation.

License
--------------------------------------------------------------------------------

Workarea Legacy Javascript is released under the [Business Software License](LICENSE)
