=begin
Write your code for the 'Darts' exercise in this file. Make the tests in
`darts_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/darts` directory.
=end

class Darts
  def initialize(x,y)
    @distance = Math.sqrt((x ** 2) + (y ** 2))
  end

  def score
    case @distance
    when 0..1
      10
    when 1..5
      5
    when 5..10
      1
    else
      0
    end
  end
end