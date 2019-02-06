require "pry"

def begins_with_r(tools_array)
  tools_array.each do |tool|
    if tool[0] != "r"
      return FALSE
    end
  end
  TRUE
end

def contain_a(argument)
  new_array = []
  argument.each do |element|
    if element.include?("a")
      new_array << element
    end
  end
  new_array
end

def first_wa(argument)
  argument.each do |element|
    string = element.to_s 
    if string.start_with?("wa")
      return string 
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.is_a?(String)
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  new_array = []
  array.each do |name_hash|
    if new_array.length == 0
      inner_hash = {}
      temp_name = name_hash[:name]
      inner_hash[:name] = temp_name
      inner_hash[:count] = 1 
      new_array << inner_hash
    else
      new_array.each do |person|
        inner_hash2 = {}
        if person.has_value?(name_hash[:name])
          person[:count] += 1
        elsif person.has_value?(name_hash[:name]) == false
          inner_hash2[:name] = name_hash[:name]
          inner_hash2[:count] = 0 
          new_array << inner_hash2
        end
      end
    end
  end
  new_array
end

def merge_data(data1, data2)
  
end




