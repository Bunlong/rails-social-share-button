# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_social_share_button/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-social-share-button"
  spec.version       = RailsSocialShareButton::VERSION
  spec.authors       = ["Bunlong"]
  spec.email         = ["bunlong.van@gmail.com"]
  spec.summary       = %q{rails-social-share-button is one of the best rails helper gem​ to add social share buttons in your Rails app. Include Twitter, Facebook, Weibo, Douban, QQ, Tumblr...}
  spec.description   = %q{rails-social-share-button is one of the best rails helper gem​ to add social share buttons in your Rails app. Include Twitter, Facebook, Weibo, Douban, QQ, Tumblr...}
  spec.homepage      = "https://github.com/Bunlong/rails-social-share-button"
  spec.license       = "MIT"

  spec.files         = Dir.glob('lib/**/*') + %w(README.md CHANGELOG.md MIT-LICENSE)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  # specify any dependencies here; for example:
  spec.files        = Dir.glob("{bin,lib,config,app/assets/javascripts,app/assets/stylesheets,app/assets/images}/**/*")
  spec.files       += %w(README.md CHANGELOG.md)
  spec.add_development_dependency "rails"
end
