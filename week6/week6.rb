#list = [2,4,6,8]
def find_tea(my_fruit, str)
    index = 0
    found_index = -1
    while (index < my_fruit.length)
        if my_fruit[index] == str
            found_index = index 
        end
        index += 1
    end
    return found_index
end
#newlist = list.reject do |number|
 #   if number > 4
  #      true
   # else
    #    false
    #end
#end
#print(newlist)
#puts


#str="banana"
#my_fruit = ["apple", "pear", "tea", "melon", "orange", "grape"]

#found_index = find_tea(my_fruit, str)
#puts("The found index for " + str + " is " + found_index.to_s)
str="banana"
my_fruit = Array.new
my_fruit << "apple"
my_fruit << "melon"
my_fruit << "cherry"
print(my_fruit)
puts
found_index = find_tea(my_fruit, str)
puts("The found index for " + str + " is " + found_index.to_s)
