class Solver
  def factorial(arg)
    raise ArgumentError, "#{self.class} '#{__method__}' argument cannot be negative" if arg.negative?
    return 1 if arg.zero?
  end
end
