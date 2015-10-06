
quad perimeters problem

class Quadrilateral
    attr_accessor :sides
    def initialize(side1, side2, side3, side4)
        @sides = [side1, side2, side3, side4]
    end
    
    def perimeter
        perimeter = @sides.inject(:+)
    end
    
end


class Trapezoid < Quadrilateral
    def initialize(side1, side2, sides3_4)
        @sides = [side1, side2, sides3_4, sides3_4]
    end
end

class Rectangle < Quadrilateral
    def initialize(side1, side2)
        @sides = [side1, side2, side1, side2]
    end
end

class Rhombus < Trapezoid
    def initialize(side)
        @sides = [side, side, side, side]
    end
end

class Square < Rectangle
    def initialize(side)
        @sides = [side, side, side, side]
    end
end