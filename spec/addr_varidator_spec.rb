require "rspec"
require "./addr_varidator"

describe AddrVaridator do
  include AddrVaridator

  context "#split" do
    it { expect(split("a@b")).to eq %w(a b) }
  end
end

