class Factorial
  def call(number)
    return number * call(number - 1) unless number <= 1

    number
  end
end
