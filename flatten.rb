class Array
@new_array = []
  def flatten_remix
    self.each do |element|            # => [1, 2, [3, 4, [5]], ["a", "b", "c"]]
      if !element.is_a? Array         # => true
        @new_array.push(element)      # ~> NoMethodError: undefined method `push' for nil:NilClass
      else
        return element.flatten_remix
      end
    end
    puts @new_array.inspect
  end
end


test_array = [1,2,[3,4,[5]],["a", "b", "c"]]         # => [1, 2, [3, 4, [5]], ["a", "b", "c"]]
puts test_array.flatten_remix == test_array.flatten

# ~> NoMethodError
# ~> undefined method `push' for nil:NilClass
# ~>
# ~> /Users/Jwan/Dropbox/Turing/Warmups/flatten.rb:8:in `block in flatten_remix'
# ~> /Users/Jwan/Dropbox/Turing/Warmups/flatten.rb:6:in `each'
# ~> /Users/Jwan/Dropbox/Turing/Warmups/flatten.rb:6:in `flatten_remix'
# ~> /Users/Jwan/Dropbox/Turing/Warmups/flatten.rb:19:in `<main>'
