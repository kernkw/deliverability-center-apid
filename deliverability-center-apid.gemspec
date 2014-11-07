Gem::Specification.new do |spec|
  spec.name = %q{deliverability-center-apid}
  spec.authors = "Kyle Kern"
  spec.version = "1.0.0"
  spec.date = %q{2014-11-06}
  spec.summary = %q{This is used for making api calls to apid for deliverability-center-apid}
  spec.files = [
    "lib/deliverability-center-apid.rb"
  ]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.13"
  spec.add_development_dependency "apid"

end