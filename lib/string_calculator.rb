class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?
    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      custom_delimiter = Regexp.escape(delimiter_line[2..])
      delimiter = /#{custom_delimiter}|,|\n/
    end
    tokens = numbers.split(delimiter)
    negatives = tokens.select { |n| n.to_i < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end
    tokens.map(&:to_i).sum
  end
end
