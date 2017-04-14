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
    emptyCheck
    @value
  end

  def size
    @size
  end

  def pop
    emptyCheck
    @size -= 1
  end

  def emptyCheck
    raise EmptyStackException if isEmpty
  end
end

class EmptyStackException < Exception; end
