def solve_puzzle(input)
    floor = 0
    input.split('').each_with_index do |char, i|
        case char
        when '('
            floor += 1
        when ')'
            floor -= 1
        end
        return i+1 if floor == -1
    end
    floor
end
