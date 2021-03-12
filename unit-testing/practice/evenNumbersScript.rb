def add_num_to_even_numbers(my_even_numbers, num)
  if num > 0
    my_even_numbers.push num
    puts "Found even number #{num}"
  end
end

my_numbers = [45, 67, 34, 23, 34, 65, 76, 22, -22]
my_even_numbers = []
for num in my_numbers
  if !num.to_i.even?
    add_num_to_even_numbers(my_even_numbers, num)
  end
end
puts my_even_numbers
