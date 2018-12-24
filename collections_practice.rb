
def sort_array_asc(array)
  array.sort do |a, b|
  a <=> b
end
end

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

def sort_array_char_count(array)
    array.sort do |a, b|
      a.length <=> b.length
  end


def swap_elements
end

def reverse_array

end
end

def kesha_maker
end

def find_a
end

def sum_array
end

def add_s
end
