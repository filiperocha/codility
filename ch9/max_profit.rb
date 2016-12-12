def max_profit(a)
  max = 0
  max_beginning = a[0]
  a.each do |v|
    max = [max, v - max_beginning].max
    max_beginning = v if (v - max_beginning <= 0)
  end
  max
end

require 'minitest/autorun'

class Tests < MiniTest::Test
  def test_example_input
    assert_equal 356, max_profit([23171, 21011, 21123, 21366, 21013, 21367])
  end
end
