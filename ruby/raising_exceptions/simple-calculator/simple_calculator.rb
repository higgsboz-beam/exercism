# frozen_string_literal: true

class SimpleCalculator
  class UnsupportedOperation < StandardError
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.add(a, b)
    a + b
  end

  def self.multiply(a, b)
    a * b
  end

  def self.divide(a, b)
    a / b
  end

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation
    raise ArgumentError unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)

    result = nil

    case operation
    when ALLOWED_OPERATIONS[0]
      result = add(first_operand, second_operand)
    when ALLOWED_OPERATIONS[1]
      begin
        result = divide(first_operand, second_operand)
      rescue ZeroDivisionError => e
        return 'Division by zero is not allowed.'
      end
    when ALLOWED_OPERATIONS[2]
      result = multiply(first_operand, second_operand)
    else
      raise 'Invalid operation provided'
    end

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
