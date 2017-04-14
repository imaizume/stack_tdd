require "rspec"
require "./calc"

describe Calc do
  include Calc

  context "#raw_area" do
    it { expect(raw_area(10)).to be 314 }
    it { expect(raw_area(250)).to be 196350 }
    it { expect(raw_area(100)).to be 31416 }
    it { expect(raw_area(1.5)).to be 7 }
    it { expect(raw_area(-0.0)).to be 0 }
  end

  context "#round" do
    it { expect(round(3.14159265)).to be 3 }
    it { expect(round(3.0)).to be 3 }
    it { expect(round(3.99999999999)).to be 4 }
    it { expect(round(0.49999999)).to be 0 }
    it { expect(round(0.5000000)).to be 1 }
    it { expect(round(1234567890)).to be 1234567890 }
  end
end

