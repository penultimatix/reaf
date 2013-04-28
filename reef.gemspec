# -*- encoding: utf-8 -*-
require File.expand_path('../lib/reef/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["//de"]
  gem.email         = ["de@01e.mobi"]
  gem.description   = "Celluloid::IO & Reel powered HTTP(S)/WS framework foundation module."
  gem.summary       = "Reel +diversified functionalities; ecosystem of HTTP(S)/WS features."
  gem.homepage      = "https://github.com/penultimatix/reef"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  #de gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "reef"
  gem.require_paths = ["lib"]
  gem.version       = Reef::VERSION

end
