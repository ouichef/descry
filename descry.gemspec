# frozen_string_literal: true

require_relative "lib/descry/version"

Gem::Specification.new do |spec|
  spec.name = "descry"
  spec.version = Descry::VERSION
  spec.authors = ["roman howdoyoudo"]
  spec.email = ["roman.howdoyoudo@gmail.com"]

  spec.summary = "A note taking helper"
  spec.description = "You don't have to leave the command line to make and navigate notes."
  spec.homepage = "https://github.com/ouichef/descry"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/changelog"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
