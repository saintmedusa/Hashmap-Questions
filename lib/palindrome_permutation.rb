
def palindrome_permutation?(string)
  array_string = string.chars
  palindrome_chars = Hash.new(0) 
  array_string.each do |ch|
    palindrome_chars[ch] += 1
  end
  char_counts = palindrome_chars.values
  puts char_counts
  if string.length % 2 != 0
    middle_char = char_counts.find_index {|i|
      i % 2 == 1
    }
    if middle_char == nil
      return false
    end
    char_counts.delete_at(middle_char)
  end
  return char_counts.all? { |ch_num|
    ch_num % 2 == 0 || ch_num == 0
  }
end
palindrome_permutation?('carrace')
