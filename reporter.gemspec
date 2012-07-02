# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Mark Tabler\n"]
  gem.email         = ["mark.tabler@fallingmanstudios.net"]
  gem.description   = %q{Ferrety reporter}
  gem.summary       = %q{Triggers report generation for ferrety users}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "reporter"
  gem.require_paths = ["lib"]
  gem.version       = '1.0.0'
end
