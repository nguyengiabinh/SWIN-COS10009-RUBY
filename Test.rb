def main
  1.upto(5) do |i|
    puts("student number " + i.to_s + " enter your name: ")
    name = gets.chomp.to_s
    puts ("the entered student name is " + name)
    point = 0
  1.upto(3) do |j|
      puts("the point of unit number " + j.to_s + " is ")
      point += gets.chomp.to_i
  end
  puts ("the total point is " + point.to_s)
  end
   
end

main
