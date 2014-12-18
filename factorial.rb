class Factorial
   attr_reader :num     # => nil
   def initialize(num)
      @num = num        # => 7
   end

   def find_factorial
      (1..num).inject(:*) || 1  # => 5040
   end
end

number = Factorial.new(7).find_factorial  # => 5040
puts number                               # => nil


def factorial(x)
  if x <= 0             # => false, false, false, false, false, false, false, true
    return 1            # => 1
  else
    x * factorial(x-1)  # => 1, 2, 6, 24, 120, 720, 5040
  end
end

puts factorial(7)  # => nil



# >> 5040
# >> 5040
