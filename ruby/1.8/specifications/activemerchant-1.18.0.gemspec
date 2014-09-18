# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "activemerchant"
  s.version = "1.18.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tobias Luetke"]
  s.cert_chain = ["gem-public_cert.pem"]
  s.date = "2011-09-22"
  s.description = "Active Merchant is a simple payment abstraction library used in and sponsored by Shopify. It is written by Tobias Luetke, Cody Fauser, and contributors. The aim of the project is to feel natural to Ruby users and to abstract as many parts as possible away from the user to offer a consistent interface across all supported gateways."
  s.email = "tobi@leetsoft.com"
  s.homepage = "http://activemerchant.org/"
  s.require_paths = ["lib"]
  s.rubyforge_project = "activemerchant"
  s.rubygems_version = "1.8.10"
  s.summary = "Framework and tools for dealing with credit card transactions."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.11"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<money>, [">= 0"])
      s.add_runtime_dependency(%q<builder>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<braintree>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<json>, [">= 1.5.1"])
      s.add_runtime_dependency(%q<active_utils>, [">= 1.0.1"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 2.3.11"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.3.11"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<money>, [">= 0"])
      s.add_dependency(%q<builder>, [">= 2.0.0"])
      s.add_dependency(%q<braintree>, [">= 2.0.0"])
      s.add_dependency(%q<json>, [">= 1.5.1"])
      s.add_dependency(%q<active_utils>, [">= 1.0.1"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 2.3.11"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.3.11"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<money>, [">= 0"])
    s.add_dependency(%q<builder>, [">= 2.0.0"])
    s.add_dependency(%q<braintree>, [">= 2.0.0"])
    s.add_dependency(%q<json>, [">= 1.5.1"])
    s.add_dependency(%q<active_utils>, [">= 1.0.1"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 2.3.11"])
  end
end
