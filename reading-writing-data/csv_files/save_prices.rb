# Writing to a CSV File
require 'csv'

file_location = "prices_3.csv"

# data = [
#   ["date", "price"],
#   ["2020-03-01", 5000.00],
#   ["2020-03-02", 4500.00],
#   ["2020-03-03", 8000.00]
# ]

# content = data.map{ |d| d.join(",") }.join("\n")

# File.write(file_location, content)

def add_price(file_location, current_date, current_price)
  CSV.open(file_location, "a") do |f|
    f << [current_date, current_price]
  end  
end

add_price(file_location, '2020-03-05', 8500.00)
add_price(file_location, '2020-03-06', 10000.00)
