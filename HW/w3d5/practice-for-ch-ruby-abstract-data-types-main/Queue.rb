class Queue

    def initialize
        @queue = Array.new
    end

    def enqueue(el)
        queue.unshift(el)
    end

    def dequeue
        queue.shift
    end

    def peek
        queue.first
    end


private
attr_reader :queue

end



