require "digest/md5"

def solve_puzzle input
    i = 0
    until Digest::MD5.hexdigest('%s%i' % [input.strip, i])[0..5] == '000000'
        i += 1
    end
    i
end
