def solve_puzzle input
    total = 0
    input.each_line do |line|
        l, w, h = line.split('x').map!(&:to_i)
        line_total = []
        [[l,w],[w,h],[h,l]].each do |first, second|
            line_total << first*second
        end
        total += line_total.map { |l| l*2 }.inject(:+) + line_total.min
    end
    total
end
