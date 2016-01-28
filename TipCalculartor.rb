# the total restaurant bill (without the tip)
puts "How much is the bill?"
bill= gets.chomp

# the percent amount you'd like to tip
puts "How much would you like to tip?"
tip_percentage= gets.chomp
total= bill.to_i + (bill.to_i * (tip_percentage.to_f/100))
puts "Your tip percentage is #{tip_percentage} percent."

# the number of people at your table
puts "How many people are in your party?"
party_size= gets.chomp.to_i
puts "Your party size is #{party_size} persons."

# the total bill including the total tip
puts "total bill is $#{ '%.2f' % total}"

# my share of the total bill (the amount that I owe in my group)
your_share = total/party_size
puts "your share of the bill is $#{'%.2f' % your_share}"


# Create a user-friendly, pretty text-only interface.

# Use methods.

# def bill(cost)
#   puts "How much is the bill?"
#   puts "your bill is "
#   gets.chomp
# end
#
# bill(200)

# Allow the user to select from a pre-determined menu of tip percents
# (e.g. 10%, 15%, and 20%) or to enter a custom tip percent amount.

def tip_menu(bill)
  ten_tip = bill * (0.10)
  puts "10% tip = #{ten_tip}."
  puts "15% tip = " + bill * (0.15) + "."
  puts "20% tip = " + bill * (0.20) + "."
end

tip_menu(bill)


# Correctly format and align money values.

# Make the final output look like a sales receipt.

# Allow user to split the bill
