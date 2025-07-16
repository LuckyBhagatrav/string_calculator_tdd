class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?
    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      custom_delimiter = Regexp.escape(delimiter_line[2..])
      delimiter = /#{custom_delimiter}|,|\n/
    end
    numbers.split(delimiter).map(&:to_i).sum
  end
end
