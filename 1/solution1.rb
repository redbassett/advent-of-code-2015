def solve_puzzle(input)
    floor = 0
    input.split('').each do |char|
        case char
        when '('
            floor += 1
        when ')'
            floor -= 1
        end
    end
    floor
end
