class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..]
      numbers = parts[1]
    end

    numbers = numbers.gsub("\n", delimiter)
    num_array = numbers.split(delimiter).map(&:to_i)

    negatives = num_array.select { |num| num < 0 }
    raise "Negative numbers not allowed: #{negatives.join(", ")}" if negatives.any?

    num_array.sum
  end
end
