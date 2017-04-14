class Stack
  def isEmpty
    true
  end

  def push(value)
    @value = value
    @size ||= 0
    @size += 1
  end

  def top
    @value
  end

  def size
    @size
  end
end

