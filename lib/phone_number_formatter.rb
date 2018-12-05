class PhoneNumberFormatter
  def initialize(number)
    @number = number
  end

  def format_number
    regex = /(?<international>\+\d\s)*(\W*|x)(?<area_code>\d{3})(\W*|x)(?<exchange>\d{3})(\W*|x)(?<subscriber>\d{4})(\W*|x)/
    @number.gsub(regex, '\k<international>(\k<area_code>) \k<exchange>-\k<subscriber>')
  end
end
