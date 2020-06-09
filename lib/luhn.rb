module Luhn
    def self.is_valid?(number)
        digits = Math.log(number).floor.downto(0).map { |i| (number / 10**i) % 10 }

        #break the credit card into its individual digits.
        digit = []
        digits = digits.reverse
        # start from the right, double every second digit.
        digits.each_with_index do |item, index|
            if ((index != 0) && (index % 2 != 0))
                item *= 2
            #If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
                if  item >= 10
                    item -= 9
                end
                digit << item
            else
                digit << item
            end
        end 
        #sum the digits
        sum = digit.inject(:+)
        #if the sum is divisible by 10, it's a valid number.  Otherwise it's invalid.
        (sum % 10 == 0) ? true : false 
    end
end