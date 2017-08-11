
# Taking operation input from user

def user_input
 arr_op = ["+", "add", "-", "subtract", "*", "multiply", "/", "divide"]
 puts "Would you like to add, subtract, multiply or divide? "
 op1 = gets.chomp.to_s
 while !arr_op.include?(op1)
   puts "Please enter valid operator. #{arr_op}"
   op1 = gets.chomp.to_s
 end
 return op1
end


#  Taking numbers from user and calculating them
#  using operations from previous method

def calculate (user_input, num1, num2)
  puts "Please enter first number: "
  num1 = Integer(gets.chomp)
  puts "Please enter second number: "
  num2 = Integer(gets.chomp.to_i)
  if user_input == "add" or user_input == "+"
     return num1 + num2
  elsif user_input == "subtract" or user_input == "-"
     return num1 - num2
  elsif user_input == "multiply" or user_input == "*"
     return num1 * num2
  elsif user_input == "divide" or user_input == "/"
     if num2 != 0
       return num1 / num2
     else puts "please enter number other than 0 "
     end
  else
    puts "Invalid operator #{user_input}"


  end

end
result = calculate(user_input, 3, 4)

puts
puts "The result is : #{result}"