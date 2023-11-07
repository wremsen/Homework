class Stack
    
    def initialize()
        @stack = Array.new
    end

    def push(ele)
        @stack << ele
    end

    def pop
        lifo = @stack.pop
        lifo
    end

    def peek
        @stack[-1]
    end
end


