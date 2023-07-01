# frozen_string_literal: true

require_relative "lib/share/scraper/version"

Gem::Specification.new do |spec|
  spec.name = "share-scraper"
  spec.version = Share::Scraper::VERSION
  spec.authors = ["NabinOjha"]
  spec.email = ["nabinojha47@gmail.com"]

  spec.summary = "share scraper"
  spec.description = "scrape share data"
  spec.homepage = "https://github.com/NabinOjha/share.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/NabinOjha/share.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/NabinOjha/share.git"
  spec.metadata["changelog_uri"] = "https://github.com/NabinOjha/share.git"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "watir"
  spec.add_development_dependency "observr"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 3.8.0"
end
