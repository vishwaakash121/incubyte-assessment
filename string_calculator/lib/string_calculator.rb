class StringCalculator

  #TODO method for addition
  def add(numbers)
    return 0 if numbers.empty?
    
    delimiters = /,|\n/
    if numbers.start_with?("//")
      delimiters = Regexp.escape(numbers[2])
      numbers = numbers.split("\n", 2).last
    end

    numbers.split(/#{delimiters}/).map(&:to_i).sum
  end

end
