class Stack
  def initialize
    @size = 0
  end

  def isEmpty
    @size == 0
  end

  def push(value)
    @value = value
    @size += 1
  end

  def top
    @value
  end

  def size
    @size
  end

  def pop
    raise EmptyStackException
  end
end

class EmptyStackException < Exception; end
