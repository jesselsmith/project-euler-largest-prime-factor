# Enter your object-oriented solution here!
class LargestPrimeFactor
    def initialize(input)
    @input = input
    end

    def number()
        number = @input
        factors = []
    
        while number % 2 == 0
            factors.push(2)
            number /= 2
        end
    
        i = 3
    
        while i <= Math.sqrt(number)
            while number % i == 0
                factors.push(i)
                number /= i
            end
    
            i +=  2
        end
    
        if( number > 2)
            factors.push(number)
        end
        factors.pop()
    end
end