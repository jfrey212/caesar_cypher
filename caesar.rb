#Caesar Cypher
#Arguments - A string, integer defining how many letters to shift each character
#Output - modified string

print "Enter the phrase to encode"
input_string = gets.chomp
print "Enter the shift factor"
shift_factor = gets.chomp

# The function will convert the string into an array with split. Use map to 
# convert each character into an ascii code using ord. Then increment the ord
# code using the shift_factor. The tricky part is to wrap back to the beginning
# of the alphabet when it reaches z. Use two ranges, one for capitals and one
# for lower case - this allows for maintaining capitalization status and then
# to use conditionals to stop non letter characters from being incremented.
def caesar(input_string, shift_factor)

end
