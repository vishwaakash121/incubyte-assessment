class StringCalculator

  #TODO method for addition
  def add(numbers)
    return 0 if numbers.empty?
    
    delimiters = /,|\n/
    numbers.split(delimiters).map(&:to_i).sum
  end

end
