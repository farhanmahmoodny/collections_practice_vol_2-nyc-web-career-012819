# your code goes here
def begins_with_r(array)
  new_array = []
  array.each do |element|
    if element[0] == "r"
      new_array.push(element)
    end
  end
  if new_array.length == array.length
    return true
  else
    return false
  end
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.index('a') != nil
      new_array.push(element)
    end
  end
  new_array
end

def first_wa(array)
  array.each do |element|
    if element[0] == "w" && element[1] == "a"
      return element
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.is_a?String
      new_array.push(element)
    end
  end
  new_array
end

def count_elements(array)
	  counts = Hash.new(0)
  array.each { |element| counts[element] += 1 }
  return_array = []
  counts.each do |element, num| 
    element.each { |key, val| return_array << {key => val, :count => num} }
  end
  return_array
end

def merge_data(keys, data)
new_array = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        new_array << key_val.merge(info) if key_val.values[0] == name
      end
    end
  end
  new_array
end

def find_cool(cool)
  cool_array = []
  cool.each do  |element|
    element.each do |key, value|
      if key == :temperature and value == "cool"
        cool_array << element
      end
    end
  end
  cool_array
end

def organize_schools(schools)
  by_location = {}
  schools.each do |school, location|
    location.each do |key, value|
      by_location << #{value}
    end
  end
by_location
end

