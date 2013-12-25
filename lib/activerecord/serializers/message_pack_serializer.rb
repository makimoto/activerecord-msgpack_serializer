require 'msgpack'

module ActiveRecord
module Serializers
class MessagePackSerializer
  class << self
    def load(binary)
      return nil if binary.match(/\A[[:space:]]*\z/)
      MessagePack.unpack(binary.b)
    end

    def dump(obj)
      MessagePack.pack(obj).b
    end
  end
end
end
end
