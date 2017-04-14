require "rspec"
require "./addr_varidator"

describe AddrVaridator do
  include AddrVaridator

  context "#split" do
    it { expect(split("a@b")).to eq %w(a b) }
    it { expect(split("a@b@c")).to eq %w(a b@c) }
    it { expect(split("abc")).to eq %w(abc) }
  end
end

