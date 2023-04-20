require 'rspec'
require './solver'

describe Solver do
  describe '#factorial' do
    it 'takes an integer as an argument' do
      # Arrange
      s = Solver.new
      arg = 0
      # Act
      result = s.factorial(arg)
      # Assert
      expect(result).to eq(1)
    end
  end
end
