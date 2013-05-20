# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google-apps-provision/version'

Gem::Specification.new do |spec|
  spec.name          = "google-apps-provision"
  spec.version       = GoogleApps::Provision::VERSION
  spec.authors       = ["Daniel O'Connor"]
  spec.email         = ["daniel.o'connor@htw.com.au"]
  spec.description   = %q{A library for interacting with the Google Apps Provisioning API in Ruby.}
  spec.summary       = %q{A library for interacting with the Google Apps Provisioning API in Ruby.

See:
http://code.google.com/googleapps/domain/gdata_provisioning_api_v2.0_developers_protocol.html

Requires OAuth tokens. The `google-apps-tokens` script can assist with
obtaining them.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'oauth'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'i18n'
end