class Map

    def initialize
      @map = []
    end

    def set(key, value)
      
    end

    def get(key)
        @map.each do |ele|
            if ele[0] == key
                return ele[1]
            end
        end
        nil
    end

    def delete(key)
      @map.reject? {|ele| ele[0] == key}
    end

    def show

    end

end