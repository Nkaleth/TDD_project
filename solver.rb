class Solver
  def factorial(arg)
    unless arg.is_a?(Integer) && arg >= 0
      raise ArgumentError, "#{self.class} '#{__method__}' argument cannot be negative"
    end
    return 1 if arg.zero?

    (1..arg).inject(1) { |product, i| product * i }
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(arg)
    return 'fizzbuzz' if (arg % 3).zero? && (arg % 5).zero?
    return 'fizz' if (arg % 3).zero?
    return 'buzz' if (arg % 5).zero?
    arg.to_s
  end
end
