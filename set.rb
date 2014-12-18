require 'set'  # => true

set = Set.new([1,2,3])  # => #<Set: {1, 2, 3}>

set.push 3  # ~> NoMethodError: undefined method `push' for #<Set: {1, 2, 3}>

# ~> NoMethodError
# ~> undefined method `push' for #<Set: {1, 2, 3}>
# ~>
# ~> /Users/Jwan/Dropbox/Turing/Warmups/set.rb:5:in `<main>'
