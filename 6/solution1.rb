def solve_puzzle input
  data = Array.new(1000) { Array.new(1000) }
  total = 0

  input.each_line do |line|
    match = line.match /.?(on|off|toggle) (\d{1,3}),(\d{1,3}) through (\d{1,3}),(\d{1,3})/

    action  = match[1]
    x1      = match[2]
    y1      = match[3]
    x2      = match[4]
    y2      = match[5]

    (y1..y2).each do |row|
      row = row.to_i
      (x1..x2).each do |col|
        col = col.to_i
        case action
        when 'on'
          data[col][row] = true
        when 'off'
          data[col][row] = false
        when 'toggle'
          data[col][row] = !data[col][row]
        end
      end
    end
  end

  (0..999).each do |row|
    row = row.to_i
    (0..999).each do |col|
      col = col.to_i
      total += 1 if data[col][row]
    end
  end

  total
end
