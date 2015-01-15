require 'prime'  # => true

class PrimeNumbers

  def prime_range(number)
    prime_array = []
    Prime.each(number) do |prime|  # => Prime
      prime_array << prime         # ~> NameError: undefined local variable or method `prime_array' for #<PrimeNumbers:0x007fb4f4855998>
    end
  end

  def prime_sum(range)
    range.reduce(0) do |sum, number|
      sum+ number
    end
  end
end



prime = PrimeNumbers.new                  # => #<PrimeNumbers:0x007fb4f4855998>
prime_array = prime.prime_range(2000000)
prime.prime_sum(prime_range(1000000))

# ~> NameError
# ~> undefined local variable or method `prime_array' for #<PrimeNumbers:0x007fb4f4855998>
# ~>
# ~> /Users/Jwan/Dropbox/Turing/Warmups/sum_of_primes.rb:7:in `block in prime_range'
# ~> /Users/Jwan/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/prime.rb:283:in `call'
# ~> /Users/Jwan/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/prime.rb:283:in `block in each'
# ~> /Users/Jwan/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/prime.rb:280:in `loop'
# ~> /Users/Jwan/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/prime.rb:280:in `each'
# ~> /Users/Jwan/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/prime.rb:149:in `each'
# ~> /Users/Jwan/Dropbox/Turing/Warmups/sum_of_primes.rb:6:in `prime_range'
# ~> /Users/Jwan/Dropbox/Turing/Warmups/sum_of_primes.rb:21:in `<main>'
