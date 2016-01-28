def solve_puzzle input
  lines = 0
  input.each_line do |line|
    line = line.strip
    lines += 1 if !line.include?(['ab','cd','pq','xy']) && line.count_vowels >= 3 && line.contains_double?
  end
  lines
end


module StringExtension
  def include? input
    if input.kind_of? Array
      input.each do |i|
        return true if super i
      end
      false
    else
     super input
    end
  end

  def count_vowels
    count = 0
    self.each_char do |char|
      if ['a','e','i','o','u'].include? char
        count += 1
      end
    end
    count
  end

  def contains_double?
    last_char = ''
    self.each_char do |char|
      if char == last_char
        return true
      else
        last_char = char
      end
    end
    false
  end
end

class String
  prepend StringExtension
end
