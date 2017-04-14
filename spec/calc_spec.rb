require "rspec"
require "./calc"

describe Calc do
  include Calc

  context "#raw_area" do
    it { expect(raw_area(10)).to be 300 }
    it { expect(raw_area(100)).to be 30000 }
  end
end

