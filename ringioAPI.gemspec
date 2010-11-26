# -*- encoding: utf-8 -*-

require "./lib/ringioAPI/version"

Gem::Specification.new do |spec|
  spec.name        = "ringioAPI"
  spec.version     = RingioAPI::VERSION
  spec.platform    = Gem::Platform::RUBY

  spec.required_rubygems_version = ">= 1.3.6"
  spec.add_dependency "activeresource", "~>3.0.0"

  spec.files         =  Dir['*'] + Dir['lib/*.rb'] + Dir['lib/ringioAPI/*.rb']
  spec.require_paths = ["lib"]

  spec.author       = "\303\201lvaro Mart\303\255n Fraguas"
  spec.email         = "amartin@ringio.com"
  spec.homepage      = "http://github.com/ringio/ringioAPI"
  spec.license       = "MPL-1.1"
  spec.summary       = %q{Ruby wrapper for Ringio API with ActiveResource}
  spec.description   = <<-EOT
	IMPORTANT: this project has just started, so the functionality is not complete yet.
    Provides a wrapper for the Ringio API in Ruby, using ActiveResource.

    You can configure it for example by adding a file with this in config/initializers/ :

    require 'ringioAPI'
    Ringio::Base.plugin_token = 'plugin_token_from_ringio'
  EOT
end
