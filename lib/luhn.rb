module Luhn
    def self.is_valid?(number)
        #WRITE YOUR SOLUTION HERE
        #break the credit card into its individual digits.
        numbers = []
        digits = number.to_s.split('').map(&:to_i)
        # start from the right, double every second digit.
        digits.reverse.each_with_index do |item, index|
            if index % 2 == 0
                double_digits = item * 2
                numbers.push(double_digits)
            else
                numbers.push(item)
            end
        end
        #If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
        numbers.map do |i|
            if i >= 10
                i - 9
            end
        end
        #sum the digits
        sum = numbers.inject(:+)
        #if the sum is divisible by 10, it's a valid number.  Otherwise it's invalid.
        return sum % 10 == 0
    end
end