class FourDigitNumber
  def self.calculate
    four_dig_array = (1000..9999).to_a
    four_dig_array.select do |number|
      first_half_integer = number.to_s.chars[0..1].join.to_i
      second_half_integer = number.to_s.chars[2..3].join.to_i
      summed_number = first_half_integer + second_half_integer
      summed_number ** 2 == number
    end
  end

end

FourDigitNumber.calculate
