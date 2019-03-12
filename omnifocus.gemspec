lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omnifocus/version"

Gem::Specification.new do |spec|
  spec.name          = "omnifocus"
  spec.version       = Omnifocus::VERSION
  spec.authors       = ["Ryan Davis", "aja"]
  spec.email         = ["ryand-ruby@zenspider.com", "kushali@rubyforge.org"]

  spec.summary       = "Synchronizes bug tracking systems to omnifocus."
  spec.homepage      = "https://github.com/seattlerb/omnifocus"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.  The
  # `git ls-files -z` loads the files in the RubyGem that have been added into
  # git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rb-scpt", "~> 1.0"
  spec.add_dependency "mechanize",    "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "octokit",   "~> 2.0"
end
