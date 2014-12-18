gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require 'date'


class Date
  def self.iso_format(date)
    if date.include? "#"
      month, year, day = date.split("#")
      assemble_for_pound_and_slash(year, month, day)
    elsif date.include? "/"
      month, day, year = date.split('/')
      assemble_for_pound_and_slash(year, month, day)
    elsif date.include? "*"
      day, month, year = date.split("*")
      assemble_for_star(year, month, day)
    else
      date
    end
  end

  def self.assemble_for_star(year,month,day)
    "#{year}-#{month}-#{day}"
  end

  def self.assemble_for_pound_and_slash(year,month,day)
    if year.to_i < 15
      "20#{year}-#{month}-#{day}"
    else
      "19#{year}-#{month}-#{day}"
    end
  end

end



describe Date do
  it "formats dates" do
    date = Date.iso_format("1959-09-07")
    date.must_equal "1959-09-07"
    date = Date.iso_format("12/12/45")
    date.must_equal "1945-12-12"
    date = Date.iso_format("22*08*1989")
    date.must_equal "1989-08-22"
    date = Date.iso_format("03#46#11")
    date.must_equal "1946-03-11"
  end
end
