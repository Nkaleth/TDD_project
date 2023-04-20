class Solver
  def factorial(arg)
    unless arg.is_a?(Integer) && arg >= 0
      raise ArgumentError, "#{self.class} '#{__method__}' argument cannot be negative"
    end
    return 1 if arg.zero?

    (1..arg).inject(1) { |product, i| product * i }
  end

  def reverse(string)
  end
end
