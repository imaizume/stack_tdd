require "rspec"
require "./stack"

describe Stack do
  let(:stack) { Stack.new }

  context "#isEmpty" do
    it do
      expect(stack.isEmpty).to be true
      stack.push(1)
      expect(stack.isEmpty).to be false
      expect(stack.top).to eq 1
    end
  end

  context "#push" do
    it do
      stack.push(1)
      expect(stack.top).to eq 1
    end
  end

  context "#size" do
    it do
      stack.push 1
      expect(stack.size).to eq 1
      stack.push 2
      expect(stack.size).to eq 2
    end
  end
end

