lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/ramen/version'

Gem::Specification.new do |spec|
  spec.name          = 'ramen-cli'
  spec.version       = Ramen::VERSION
  spec.authors       = ["'Karen Flores'"]
  spec.email         = ["'karen.ag.flores@gmail.com'"]
  spec.files         = ["lib/ramen/ramen_shop.rb", "lib/ramen/cli.rb", "lib/ramen/scraper.rb", "lib/ramen/version.rb", "lib/ramen.rb"]

  spec.summary       = "Ramen restaurants in San Diego"
  spec.description   = "Provides a list of 13 ramen restaurants in San Diego"
  #spec.homepage      = "https://github.com/kagflores/ramen-cli"
  spec.license       = "MIT"
  #spec.executables   << 'ramen'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  #spec.add_development_dependency "nokogiri", ">= 0"
  #spec.add_development_dependency "open-uri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
  
  spec.add_dependency "nokogiri"
end
