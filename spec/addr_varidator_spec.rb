require "rspec"
require "./addr_varidator"

describe AddrVaridator do
  include AddrVaridator

  context "#hoge" do
    it { expect(1).to be 1 }
  end
end

