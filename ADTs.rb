class Stack
    def initialize
      @stack = []
    end

    def add(el)
      @stack.push(el)   # could I just do self.push(el)
    end

    def remove
      @stack.pop
    end

    def show
      @stack.dup
    end
  end

  # stack = Stack.new
  # stack.show
  # stack.add(1)
  # stack.add(2)
  # stack.add(3)
  # stack.remove
  # stack.show


  class Queue
      def initialize
        @queue = []
      end

      def enqueue(el)
        @queue.push(el)
      end

      def dequeue
        @queue.shift
      end

      def show
        @queue.dup
      end
    end

    # queue = Queue.new
    # queue.show
    # queue.enqueue(1)
    # queue.enqueue(2)
    # queue.enqueue(3)
    # queue.dequeue
    # queue.show

    class Map
      def initialize
        @map = []
      end

      def assign(key, value)
        @map << [key, value] unless @map.any? {|pair| pair.first == key}
      end

      def lookup(key)
        @map.select { |pair| pair[0] == key }.first.last
      end

      def remove(key)
        @map.each { |pair| @map.delete(pair) if pair.first == key}
      end

      def show
        deep_dup(@map)
      end

      def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? el.dup : el}
      end
    end

    map = Map.new
    map.assign('a', 1)
    map.assign('b', 1)
    map.assign('c', 3)
    map.show
    map.lookup('b')
    map.remove('a')
    p map.show
