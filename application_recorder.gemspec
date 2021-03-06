# frozen_string_literal: true

require_relative "lib/application_recorder/version"

Gem::Specification.new do |spec|
  spec.name = "application_recorder"
  spec.version = ApplicationRecorder::VERSION
  spec.authors = ["Jose Augusto"]
  spec.email = ["joseaugusto.881@outlook.com"]

  spec.summary = "The black box of your rails application."
  spec.description = "A Rails application logger."
  spec.homepage = "https://github.com/JAugusto42/application_recorder"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/JAugusto42/application_recorder"
  spec.metadata["changelog_uri"] = "https://github.com/JAugusto42/application_recorder/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
