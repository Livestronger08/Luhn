module Luhn
    def self.is_valid?(number)
        #WRITE YOUR SOLUTION HERE
        luhn.is_valid?()
        sum = 0

        number.reverse.split("").each_slice(2) do |a, b|
            sum += x.to_i + (2*y.to_i).divmod(10).sum
        end

        p sum%10 == 0 ? 'valid' : 'invalid'
    end
end