class Song
  def ninetyNine
    bottles = 99                                                                           # => 99
    while bottles > 0                                                                      # => true
      if bottles > 1                                                                       # => true
        system("say", "#{bottles} bottles of beer on the wall. #{bottles} bottles of beer.")  # ~> NoMethodError: undefined method `say' for #<Song:0x007fc11a8ff420>
        puts "Take one down, pass it around. #{bottles-1} bottles of beer on the wall."
      else
        puts "#{bottles} bottle of beer on the wall. #{bottles} bottle of beer."
        puts "Take one down, pass it around. #{bottles-1} bottles of beer on the wall."
      end
      bottles -= 1
    end
  end
end


song = Song.new  # => #<Song:0x007fc11a8ff420>
song.ninetyNine

# ~> NoMethodError
# ~> undefined method `say' for #<Song:0x007fc11a8ff420>
# ~>
# ~> /Users/Jwan/Dropbox/Turing/warmups/ninetynine.rb:6:in `ninetyNine'
# ~> /Users/Jwan/Dropbox/Turing/warmups/ninetynine.rb:19:in `<main>'
