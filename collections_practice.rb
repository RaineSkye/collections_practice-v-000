
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

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end


def swap_elements(array)
  array[1], array[2]=array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each{|thing| thing[2] = "$"}
end

def find_a(array)
  array.find_all {|word|
    word[0]=="a"}
end

def sum_array(array)
  count = 0
  array.each do |item|
    count += item
  end
  count
end

def add_s(array)
  array.collect do |item|
    if array[1] == item
      item
    else
      item + "s"
    end
  end
end
