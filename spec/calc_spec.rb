require "rspec"
require "./calc"

describe Calc do
  include Calc

  it do
    expect(hoge).to be true
  end
end

