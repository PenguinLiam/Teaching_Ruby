# ============== #
#### VARIABLES ###
# ============== #

var = 'Hello World'        # Variables start with lower case characters
CONST = 'Hello World'      # Constants start with upper case characters

$globalVar = 'Hello World' # Global variable - can be used anywhere in the program



# ================= #
### IF/ELSIF/ELSE ###
# ================= #
''' If statements check to see if a condition is true and carried out a
    block of code if it is. You may only have 1 if and else statement but
    you can have as many elsif statements as you like
'''

# Simple if statement
if var == 'Hello World' then
    puts "The variable is 'Hello World'"
else
    puts "The variable is #{var}"
end
    
# If/Else statement
if var == 'Goodbye World' then
    puts "The variable is 'Goodbye World'"
elsif var == 'Hola World' then
    puts "The variable is 'Hola World'"
elsif var == 'Hallo World' then
    puts "The variable is 'Hallo World'"
else
    puts "The variable is '#{var}'"
end
   
    
    
# ========== #
### ARRAYS ###
# ========== #
''' Arrays in ruby can contain elements of all the same data type or all
    different datatypes. It is not as strict as Java.
'''
    
# Creating an array
myArray = [nil, nil, nil, nil, nil]     # Creates an empty array with 5 elements
myArray = Array.new(5)                  # Creates an empty array with 5 elements
    
# Basic array operations
myArray[0] = 'a'                        # Assigns 'a' to index 0 of the array
first = myArray.first                   # Gets the first item in an array
last = myArray.last                     # Gets the first item in an array

empty = myArray.empty?                  # Gets a boolean of whether the array is empty

includesA = myArray.include?('a')         # Gets a boolean of whether the array contains 'a'
    
length = myArray.length                 # gets the length of the array
    
myArray.push('f')                       # Adds 'f' to the end of the array
myArray << 'g'                          # Adds 'g' to the end of the array
myArray.unshift('a')                    # Adds 'a' to the start of the array
myArray.insert(3, 'c')                  # Inserts 'c' to index 3 and shifts everything after it up by 1

myArray.pop                             # Removes the last element from the array - 'g'
myArray.shift                           # Removes the first element from the array - 'a'
myArray.delete_at(0)                    # Deletes the element at index 0
myArray.delete('b')                     # Deletes all occurences of element 'b' from the array
    
    
    
# ========= #
### Loops ###
# ========= #   

# loop do - This will run indefinitely so i commented it out
'''loop do
    puts "Press CTRL + C to cancel the program and end the loop"
end'''
    
    
# While loop - Runs as long as a boolean condition is met
x = 0
while x < 4 
    x += 1
    puts x
end
    
    
# Do/While loops - Does something as long as a boolean condition is met
begin
    puts "Do you want to do that again? (y/n)"
    answer = gets.chomp
end while answer == 'y'
    
    
# For loop - Runs a loop for a set number of times
for i in 1..10 do
    puts i
end
   
    
# Each do loops - Iterates over an object (e.g. array) and performs an action for each element
myArray.each do |arr|
    puts arr
end
    
    
    
# ===================== #
### FILE MANIPULATION ###
# ===================== #
    
file = File.open('testfile.txt', 'w')            # w = write, r = read
file.puts 'Hello World'                          #
file.puts 'Goodbye World'
file.close()
    
file = File.open('testfile.txt', 'r')
file.each do |line|
    puts line
end
file.close()
 
    
    
# =========== #
### METHODS ###
# =========== #
''' Methods allow you to prevent re-using code. You can place code that is run many times in here
    but is not suitable for a loop, or is used in many different places in the program.
'''
    
# Defining a method - You dont need parameters but you can pass them in
def functionName(parameter1, parameter2)
    puts parameter1
    puts parameter2
end
    
# Calling a function
functionName('Hello', 'World')
    
    
# Returning from a function
def addition(parameter1, parameter2)
    return parameter1 + parameter2
end

threePlusFour = addition(3, 4)          # Assigning a return to a value
puts threePlusFour