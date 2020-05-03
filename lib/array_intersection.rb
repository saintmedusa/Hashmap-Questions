def intersection(list1, list2)
  intersection = {}
  short_list = []
  long_list = []
  results = []
  if list1.length < list2.length 
    short_list = list1
    long_list = list2
  else
    short_list = list2
    long_list = list1
  end
  short_list.each do |num|
    intersection[num] = true
  end
  
  long_list.each do |num|
    if intersection[num]
      results.push(num)
    end
  end
  return results
end