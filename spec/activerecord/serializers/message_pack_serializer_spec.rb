require "spec_helper"

describe ActiveRecord::Serializers::MessagePackSerializer do
  describe ".load" do
    subject do
      described_class.load(binary)
    end

    context "with nil" do
      let(:binary) do
        nil
      end

      it { should be_nil }
    end

    context "with blank data" do
      let(:binary) do
        ""
      end

      it { should be_nil }
    end

    context "with valid binary string" do
      let(:binary) do
        "\x92\xA3foo*".force_encoding("ASCII-8BIT") # == ["foo", 42].to_smgpack
      end

      it "returns valid data" do
        should == ["foo", 42]
      end
    end
  end

  describe ".dump" do
    let(:obj) do
      ["foo", 42]
    end

    subject do
      described_class.dump(obj)
    end

    it "returns valid binary string" do
      should == "\x92\xA3foo*".force_encoding("ASCII-8BIT")
    end
  end
end
