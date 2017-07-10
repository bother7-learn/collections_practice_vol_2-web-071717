# your code goes here
def begins_with_r(array)
x = array.all? {|num| num.start_with?('r')}

end

def contain_a(array)
array.select {|num| num.include?('a')}
end

def first_wa(array)
  list = array.select {|item| item.class == String}
list.find { |item| item.include?("wa") }
end

def remove_non_strings(array)
  array.select {|item| item.class == String}
end

def count_elements(array)
  unique = []
  counts = []
  element = []
  counter = 0
  duplicates = Hash.new(0)
  finalarray = []
  array.each do |name|
    element << name.flatten[0]
    counts << name.flatten[1]
  end
  unique = counts.uniq
  unique.each do |name|
    counts.each do |countname|
      if name == countname
        counter += 1
        duplicates[name] = counter
      end
    end
    counter = 0
  end
  counter = 0
  duplicates.each do |name, value|
    finalarray << {:name => name, :count => value}
  end
  finalarray
end

def merge_data(keys, data)
## data.each do |key, value|
bigarray = []
counter = 0
myhash = Hash(*data)
myhash.each do |key, value|
  bigarray << value.merge(keys[counter])
counter += 1
end
bigarray
end

def find_cool(hashes)
  final = []
hashes.each do |value|
  search = value.flatten
  search.each do |name|
    if name == "cool"
      final << value
    end
  end
end
final
end

def organize_schools(hashes)
id = []
city = []
myarray = [[], [], []]
hashes.each do |school, location|
  id << school
  city << location[:location]
end
uniquecity = city.uniq
counter = 0
counterunique = 0


    uniquecity.each do |cityname|
      id.each do |name|
        if city[counter] == cityname
        myarray[counterunique] << name
        end
      counter += 1
      end
    counter = 0
    counterunique += 1

    end
finalhash = Hash.new(0)
uniquecity.each do |cityname|
  finalhash[cityname] = myarray[counter]
  counter += 1
end
finalhash
end
