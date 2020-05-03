
def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end
  common_chars = Hash.new(0)
  string1.chars.each do |ch|
    common_chars[ch] += 1
  end
  string2.chars.each do |ch|
    if common_chars[ch] == 0
      return false
    else
      common_chars[ch] -= 1
    end
  end
  return true
end