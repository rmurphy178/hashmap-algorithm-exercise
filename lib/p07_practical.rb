require_relative 'p05_hash_map'

def can_string_be_palindrome?(string)
  my_hash_map = HashMap.new

  string.chars.each do |char|
    if my_hash_map[char]
      my_hash_map[char] += 1
    else
      my_hash_map[char] = 1
    end
  end

  odds = 0

  my_hash_map.each do |el, count|
    odds += 1 if count % 2 != 0

    if string.length % 2 == 0 && odds > 0
      return false
    end

    if string.length % 2 == 1 && odds > 1
      return false
    end

  end

  true
end
