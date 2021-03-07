# i = 0
# numbers = []

# while i < 6
#   puts "At the top i is #{i}"
#   numbers.push(i)

#   i += 1
#   puts "Numbers now: ", numbers
#   puts "At the bottom i is #{i}"
# end

# puts "The numbers: "

# # remember you can write this 2 other ways?
# numbers.each {|num| puts num}

def loop_while(n)
  numbers = []
  for i in (0..n)
    puts "At the top i is #{i}"
    numbers.push(i)
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
end

loop_while(3)
loop_while(5)
