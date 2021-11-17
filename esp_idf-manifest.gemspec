# frozen_string_literal: true

require_relative "lib/esp_idf/manifest/version"

# rubocop:disable Metrics/BlockLength
Gem::Specification.new do |spec|
  spec.name          = "esp_idf-manifest"
  spec.version       = ESPIDF::Manifest::VERSION
  spec.authors       = ["Tomoyuki Sakurai"]
  spec.email         = ["y@trombik.org"]

  spec.summary       = "manifest class of ESP-IDF components"
  spec.description   = "A ruby version of manifest class of ESP-IDF components."
  spec.homepage      = "https://github.com/trombik/esp_idf-manifest"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "guard-rspec", "~> 4.7.3"
  spec.add_development_dependency "guard-rubocop", "~> 1.5.0"
  spec.add_development_dependency "rb-kqueue", "~> 0.2.7"
  spec.add_development_dependency "rubocop", "~> 1.23.0"
  spec.add_development_dependency "rubocop-rake", "~> 0.6.0"
  spec.add_development_dependency "rubocop-rspec", "~> 2.6.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata = {
    "rubygems_mfa_required" => "true"
  }
end
# rubocop:enable Metrics/BlockLength
