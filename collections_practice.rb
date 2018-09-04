#begins_with_r Return true if every element ofthe tools array starts with an "r" and false otherwise.

def begins_with_r(array)
  array.all? { |word| word[0] == "r"}
end

#contain_a return all elements that contain the letter 'a'

def contain_a(array_words)
  array_words.select { |word| word.include?("a") }
end

#first_wa Return the first element that beginswith the letters 'wa'

def first_wa(array_words)
  array_words.find { |word| word.to_s.start_with?("wa") }
end

#remove_non_strings remove anything that's nota string from an array

def remove_non_strings (array)
  array.delete_if do |word| !(word.is_a? String) end
end

#count_elements count how many times somethingappears in an array

def count_elements(array)
  array.group_by(&:itself)                   
 .map{|k, v| k.merge(count: v.length)}
end

#merge_data combines two nested data structures into one

def merge_data(keys, values)
  keys << values
end

#find_cool find all cool hashes

def find_cool(hash)
  hash.select do |key, value| value == "cool"
  end
end

#organize_schools organizes the schools by location

def organize_schools (hash)
 hash.sort.to_h
end
