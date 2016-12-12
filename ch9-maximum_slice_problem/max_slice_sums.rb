def max_slice_sums(a)
  return a.max if a.max < 1
  max_ending = max_slice = 0
  a.each do |v|
    max_ending = [0, max_ending + v].max
    max_slice = [max_slice, max_ending].max
  end
  max_slice
end

require 'minitest/autorun'

class Tests < MiniTest::Test
  def test_example_input
    assert_equal 5, max_slice_sums([3, 2, -6, 4, 0])
    assert_equal -10, max_slice_sums([-10])
    assert_equal -10, max_slice_sums([-12,-11,-15,-10])
  end
end
