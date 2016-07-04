require_relative './message_pack_serializer/version'
require 'active_record'
require 'msgpack'

class ActiveRecord::Serializers::MessagePackSerializer
  def self.load(binary)
    return nil if binary.nil? || binary.match(/\A[[:space:]]*\z/)
    MessagePack.unpack(binary.force_encoding("ASCII-8BIT"))
  end

  def self.dump(obj)
    MessagePack.pack(obj).force_encoding("ASCII-8BIT")
  end
end
