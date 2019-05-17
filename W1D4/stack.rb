class Stack

  def initialize
    @ivar = []
  end

  def push(el)
    @ivar << el
  end

  def pop
    @ivar.pop
  end

  def peek
    @ivar.last
  end

end

# test = Stack. new
# test.push(2)
# test.push(3)
# test.push(5)
# p test
# p test.pop
# p test.peek
# p test
