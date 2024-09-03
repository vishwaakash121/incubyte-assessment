class StringCalculator

  #TODO method for addition
  def add(numbers)
    return 0 if numbers.empty?

    delimiters, numbers = _extract_delimiters(numbers)
    number_list = numbers.split(delimiters).map(&:to_i)
    
    _check_for_negatives(number_list)

    number_list.sum
  end

  private

  def _extract_delimiters(numbers)
    if numbers.start_with?("//")
      delimiter = Regexp.escape(numbers[2])
      numbers = numbers.split("\n", 2).last
      [/#{delimiter}/, numbers]
    else
      [/,|\n/, numbers]
    end
  end

  def _check_for_negatives(number_list)
    negatives = number_list.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end
