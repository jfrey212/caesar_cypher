#Caesar Cypher
#Arguments - A string, integer defining how many letters to shift each character
#Output - modified string

require 'pry-byebug'

print "Enter the phrase to encode: "
input_string = gets.chomp
print "Enter the shift factor: "
shift_factor = gets.chomp.to_i

# The function will convert the string into an array with split. Use map to
# convert each character into an ascii code using ord. Then increment the ord
# code using the shift_factor. The tricky part is to wrap back to the beginning
# of the alphabet when it reaches z. Use two ranges, one for capitals and one
# for lower case - this allows for maintaining capitalization status and then
# to use conditionals to stop non letter characters from being incremented.

def caesar(input_string, shift_factor)
  lower_case_range = (97..122)
  upper_case_range = (65..90)

  ord_array = input_string.split("").map {|chr| chr.ord }
  shifted_array = ord_array.map do |ord|
    if lower_case_range.include?(ord)
      chr_case = "lower"
    elsif upper_case_range.include?(ord)
      chr_case = "upper"
    else
      next
    end

    shift_factor.times do
      ord += 1
    end
    ord
  end

  shifted_string = shifted_array.map {|ord| ord.chr }.join("")
  p shifted_array
  p shifted_string
end

  caesar(input_string, shift_factor)
