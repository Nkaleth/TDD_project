require 'rspec'
require './solver'

describe Solver do
  describe '#factorial' do
    it 'takes zero as an argument and returns 1' do
      # Arrange
      s = Solver.new
      arg = 0
      # Act
      result = s.factorial(arg)
      # Assert
      expect(result).to eq(1)
    end

    it 'raises an exception if the argument is negative' do
      # Arrange
      s = Solver.new
      arg = -1
      # Assert
      expect { s.factorial(arg) }.to raise_error(ArgumentError)
    end

    it 'returns 6 if arg is 3' do
      # Arrange
      s = Solver.new
      arg = 3
      # Act
      result = s.factorial(arg)
      # Assert
      expect(result).to eq(6)
    end

    it 'raises an exception if the argument is not an integer' do
      # Arrange
      s = Solver.new
      arg = 'one'
      # Assert
      expect { s.factorial(arg) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns a reversed string' do
      new_solver = Solver.new
      expect(new_solver.reverse('Hello')).to eq('olleH')
    end
  end

  describe '#fizzbuzz' do
    it 'Return "fizz" When N is divisible by 3' do
      new_solver = Solver.new
      result = new_solver.fizzbuzz(3)
      expect(result).to eq('fizz')
    end

    it 'Return "buzz" When N is divisible by 5' do
      new_solver = Solver.new
      result = new_solver.fizzbuzz(5)
      expect(result).to eq('buzz')
    end

    it 'Return "fizzbuzz" When N is divisible by 3 and 5' do
      new_solver = Solver.new
      result = new_solver.fizzbuzz(15)
      expect(result).to eq('fizzbuzz')
    end
  end
end
