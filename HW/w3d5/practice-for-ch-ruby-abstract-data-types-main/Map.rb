class Map

    def initialize
        @map = Array.new
    end

    def set (key, value)
        map.each do |ele|
            if ele.include?(key) == true
                ele.pop
                ele << value
                return true
            end
        end
        self.map << [key, value]
    end












private
attr_reader :map


end
