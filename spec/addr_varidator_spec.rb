require "rspec"
require "./addr_varidator"

describe AddrVaridator do
  include AddrVaridator

  context "#split" do
    it { expect(split('a@b')).to eq %w(a b) }
    it { expect(split('a@b@c')).to eq %w(a b@c) }
    it { expect(split('abc')).to eq %w(abc) }
  end

  context "#include_ng_char?" do
    context '正しい入力の場合' do
      %w(! # $ % & ' * + - / = ? ^ _ ` { } | ~).each do |char|
        it "#{char}" do
          expect(include_ng_char?("a#{char}c")).to be true
          expect(include_ng_char?("#{char}bc")).to be true
          expect(include_ng_char?("ab#{char}")).to be true
        end
      end

      [
        'abc',
        'ab.cd',
        'ab.cd.ef',
      ].each do |str|
        it "#{str}" do
          expect(include_ng_char?(str)).to be true
        end
      end
    end

    context '間違った入力の場合' do
      %w(( ) < > [ ] : ; @ \ , ").each do |char|
        it "#{char}" do
          expect(include_ng_char?("a#{char}c")).to be false
        end
      end

      [
        'a c',
        '.ab',
        'ab.',
        'ab..cd',
      ].each do |str|
        it "#{str}" do
          expect(include_ng_char?(str)).to be false
        end
      end
    end
  end

  context "#include_zenkaku?" do
    context '正しい入力の場合' do
      it { expect(include_zenkaku?('abc')).to be true }
    end

    context '全角文字が含まれている場合' do
      it { expect(include_zenkaku?('a　c')).to be false }
      it { expect(include_zenkaku?('あいうえお')).to be false }
    end
  end

  context "#quoted_string" do
    context "given correct args" do
      it { expect(quoted_pair?("\\\t")).to be true }
      it { expect(quoted_pair?("\\'")).to be true }
      it { expect(quoted_pair?("\\|")).to be true }
    end

    context "given wrong args" do
      it { expect(quoted_pair?("\\")).to be false }
      it { expect(quoted_pair?("\\ ")).to be false }
      it { expect(quoted_pair?("\\'!")).to be false }
    end
  end
end

