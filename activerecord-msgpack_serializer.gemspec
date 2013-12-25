lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord/serializers/message_pack_serializer/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-msgpack_serializer"
  spec.version       = ActiveRecord::Serializers::MessagePackSerializer::VERSION
  spec.authors       = ["Shimpei Makimoto"]
  spec.email         = ["makimoto@tsuyabu.in"]
  spec.summary       = %q{A custom ActiveRecord serializer using MessagePack}
  spec.homepage      = "https://github.com/makimoto/activerecord-msgpack_serializer"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_dependency "activerecord", "~> 4.0"
  spec.add_dependency "msgpack"
end
