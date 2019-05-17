class Queue

    def initialize
      @queue = []
    end

    def enqueue(el)
      @queue << el
    end

    def dequeue
      @queue.shift
    end

    def peek
      @queue.first
    end

end

test = Queue. new
test.enqueue(1)
test.enqueue(2)
test.enqueue(3)
test.enqueue(4)

p test
p test.dequeue
p test
p test.peek
