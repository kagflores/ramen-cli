require_relative './lib/ramen/cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'ramen'
  spec.version       = Ramen::Cli::VERSION
  spec.authors       = ["'Karen Flores'"]
  spec.email         = ["'karen.ag.flores@gmail.com'"]
  spec.files         = ["lib/ramen/ramen.rb", "lib/ramen/cli.rb", "lib/ramen/scraper.rb", "lib/ramen/cli/verson.rb", "config/environment.rb", "lib/ramen.rb"]

  spec.summary       = "Ramen restaurants in San Diego"
  spec.description   = "Provides a list of 13 ramen restaurants in San Diego"
  spec.homepage      = "https://github.com/kagflores/ramen-cli"
  spec.license       = "MIT"
  spec.executables   << 'ramen'

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri", ">= 0"
  #spec.add_development_dependency "open-uri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end
