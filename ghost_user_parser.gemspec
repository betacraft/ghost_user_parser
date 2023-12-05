# frozen_string_literal: true


Gem::Specification.new do |spec|
  spec.name = "ghost_user_parser"
  spec.version = "0.0.1"
  spec.authors = ["Mathew Thomas"]
  spec.email = ["mathew1.9thomas@gmail.com"]

  spec.summary = "A ruby plugin used to help evaluate the exported Ghost users"
  spec.homepage = "https://github.com/betacraft/ghost_user_parser"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/betacraft/ghost_user_parser"
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency("csv")
end
