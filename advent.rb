#!/usr/bin/ruby

day_num = ARGV[0]
part = ARGV[1] || 1

if day_num.nil?
    abort "Please enter a day number to run."
else
    if Dir.exists? day_num
        if File.exist? "#{day_num}/solution#{part}.rb"
            require "./#{day_num}/solution#{part}"
        else
            abort "No solution file found for day #{day_num}, part #{part}."
        end

        if File.exist? "#{day_num}/input.txt"
            puts solve_puzzle File.read("#{day_num}/input.txt")
        else
            abort "No input file found for day #{day_num}."
        end
    else
        abort "Please enter a valid day number to run."
    end
end
