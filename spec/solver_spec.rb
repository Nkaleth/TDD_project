require 'rspec'
require './solver'

describe Solver do
  describe '#factorial' do
    it 'takes an argument' do
      s = Solver.new
      arg = 0
      Solver.factorial(arg)
    end
  end
end
