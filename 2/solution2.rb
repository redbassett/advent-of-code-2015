def solve_puzzle input
    total = 0
    input.each_line do |line|
        next if line.nil?
        l, w, h = line.split('x').map!(&:to_i)
        line_total = []
        [[l,w],[w,h],[h,l]].each do |first, second|
            line_total << first*2+second*2
        end
        total += line_total.min + l*w*h
    end
    total
end
