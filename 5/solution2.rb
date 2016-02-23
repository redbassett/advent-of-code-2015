def solve_puzzle input
  lines = 0
  input.each_line do |line|
    line.strip!
    lines += 1 if line.contains_doubles? && line.contains_triplet?
  end
  lines
end

module StringExtension
  def contains_doubles?
    self.match /(..).*\1/
  end

  def contains_triplet?
    self.match /(.).\1/
  end
end

class String
  prepend StringExtension
end
