# MotionDevices

This tiny gem adds a rake task for each device you can deploy your RubyMotion app to. To configure, put a configuration file in one or more of these places:

* `<PROJECT_ROOT>/config/devices.yml`
* `<HOME>/.devices.yml`
* `/etc/devices.yml`

For each device, the config file must contain the device's name and ID, like so:

    iphone5: e73f82f9862a356ffe1d11fb61108fc6
    iphone4: 09f6a3185f8d431c37651cf6836e6d37
    ipad: 422258808a90789d3c15cd8249bd00a3

The gem will define tasks for each defined device in all the configuration files that it finds.

## Usage

Install the gem with

    gem install 'motion-devices'

Either require the gem from your Rakefile:

    require 'motion-devices'

or add it to your Gemfile, if you're using bundler (which you should):

    gem 'motion-devices'

# Forking

Feel free to fork and submit pull requests!
