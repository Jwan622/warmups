class Printer

  def initialize
    array = []
  end
  def print_pairs_pages(number)
    #we want a returned value of arrays of arrays where each pair = number + 1
    starting_value = 1
    array_index = 0
    number_of_arrays = number/2

    number_of_arrays.times do
      array[array_index] = [starting_value, number]
      array_index += 1
      starting_value += 1
      number -= 1
    end
  end
    # while number < number_of_arrays do
    #   array[number]
end
