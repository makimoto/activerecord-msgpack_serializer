require 'msgpack'

module ActiveRecord
module Serializers
class MessagePackSerializer
  class << self
    def load(binary)
      return nil if binary.blank?
      MessagePack.unpack(binary)
    end

    def dump(obj)
      MessagePack.pack(obj)
    end
  end
end
end
end
