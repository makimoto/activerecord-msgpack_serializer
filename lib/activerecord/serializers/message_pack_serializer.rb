require 'msgpack'

module ActiveRecord
module Serializers
class MessagePackSerializer
  class << self
    def load(binary)
      return nil if binary.nil? || binary.match(/\A[[:space:]]*\z/)
      MessagePack.unpack(binary.force_encoding("ASCII-8BIT"))
    end

    def dump(obj)
      MessagePack.pack(obj).force_encoding("ASCII-8BIT")
    end
  end
end
end
end
