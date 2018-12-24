#should return an array sorted in ascending order
#expect(sort_array_asc([25, 7, 1])).to eq([1,7,25])

def sort_array_asc(array)
  array.sort
end

=begin
def sort_array_desc(array)
  array.sort do |a, b|
    if a == b
      0
    elsif a > b
      -1
    elsif a < b
      1
    end
  end
end
=end

#should return an array sorted in descending order
#expect(sort_array_desc([25, 7, 14])).to eq([25, 14, 7])

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

#should return an array in ascending order sorted by the number of characters in the string
#expect(sort_array_char_count(["dogs", "cat", "Horses"])).to eq(["cat", "dogs", "Horses"]

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

#swap the second and third elements of an array
#expect(swap_elements(["blake", "ashley", "scott"])).to eq(["blake", "scott", "ashley"])

def swap_elements(array)
  array[1], array[2]=array[2], array[1]
  array
end

#reverse the order of an array of integers
#expect(reverse_array([12, 4, 35])).to eq([35, 4, 12])

def reverse_array(array)
  array.reverse
end

#taking an array as an input, change the 3rd character of each element to a dollar sign.
#expect(kesha_maker(["blake", "ashley", "scott"])).to eq(["bl$ke", "as$ley", "sc$tt"])

def kesha_maker(array)
  array.each{|thing| thing[2] = "$"}
end

#find all words that begin with "a" in the following array
#expect(find_a(["apple", "orange", "pear", "avis", "arlo", "ascot" ])).to eq(["apple", "avis", "arlo", "ascot"])

def find_a(array)
  array.find_all {|word|
    word[0]=="a"}
end

#sum all the numbers in the following array
#for a bonus, look up the `.inject` method to get this test passing
#expect(sum_array([11,4,7,8,9,100,134])).to eq(273)

def sum_array(array)
  count = 0
  array.each do |item|
    count += item
  end
  count
end

#dd an "s" to each word in the array except for the 2nd element in the array

def add_s(array)
  array.collect do |item|
    if array[1] == item
      item
    else
      item + "s"
    end
  end
end
