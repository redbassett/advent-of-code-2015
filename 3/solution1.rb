def solve_puzzle(input)
    x = 0
    y = 0
    houses = { "0,0" => 1 }
    input.split('').each do |char|
        case char
        when '>'
            x += 1
        when '<'
            x -= 1
        when '^'
            y += 1
        when 'v'
            y -= 1
        end
        houses["#{x},#{y}"] = 0 if houses["#{x},#{y}"].nil?
        houses["#{x},#{y}"] += 1
    end
    houses.length
end
