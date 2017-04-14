require "rspec"
require "./addr_varidator"

describe AddrVaridator do
  include AddrVaridator

  context "#split" do
    it { expect(split("a@b")).to eq %w(a b) }
    it { expect(split("a@b@c")).to eq %w(a b@c) }
    it { expect(split("abc")).to eq %w(abc) }
  end

  context "#include_ng_char?" do
    context '正しい入力の場合' do
      it { expect(include_ng_char?("abc")).to be true }
    end

    context '禁止文字が含まれている場合' do
      it { expect(include_ng_char?("a@c")).to be false }
      it { expect(include_ng_char?("a\\c")).to be false }
      it { expect(include_ng_char?("a c")).to be false }
    end
  end

  context "#include_zenkaku?" do
    context '正しい入力の場合' do
      it { expect(include_zenkaku?("abc")).to be true }
    end

    context '全角文字が含まれている場合' do
      it { expect(include_zenkaku?("a　c")).to be false }
      it { expect(include_zenkaku?("あいうえお")).to be false }
    end
  end
end

