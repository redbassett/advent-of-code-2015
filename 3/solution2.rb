def solve_puzzle(input)
    santa = PresentDeliverer.new
    robot = PresentDeliverer.new

    input.split('').each_with_index do |char, i|
        if i.even?
            robot.move char
        else
            santa.move char
        end
    end
    santa.houses.merge(robot.houses) { |key, s, r| s + r }.length
end

class PresentDeliverer
    attr_accessor :houses

    def initialize
        @cur_x = 0
        @cur_y = 0

        @houses = { "0,0" => 1 }
    end

    def move char
        case char
        when '>'
            @cur_x += 1
        when '<'
            @cur_x -= 1
        when '^'
            @cur_y += 1
        when 'v'
            @cur_y -= 1
        end
        @houses["#{@cur_x},#{@cur_y}"] = 0 if @houses["#{@cur_x},#{@cur_y}"].nil?
        @houses["#{@cur_x},#{@cur_y}"] += 1
    end
end
