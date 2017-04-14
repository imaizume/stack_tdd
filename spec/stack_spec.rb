require "rspec"
require "./stack"

describe Stack do
  let(:stack) { Stack.new }
  context "#isEmpty" do
    it { expect(stack.isEmpty).to be true }
  end
end

