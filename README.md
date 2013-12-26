# ActiveRecord::Serializers::MessagePackSerializer

A custom ActiveRecord serializer using MessagePack.

## Installation

Add this line to your application's Gemfile:

    gem 'activerecord-msgpack_serializer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-msgpack_serializer

## Usage

If you want `meta_data` field to serialize with MessagePack, use `serialize` like the follow:

```ruby
require "activerecord/message_pack_serializer"
class Post < ActiveRecord::Base
  serialize :meta_data, ActiveRecord::Serializers::MessagePackSerializer

  # ...
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

[MIT](http://makimoto.mit-license.org/)
