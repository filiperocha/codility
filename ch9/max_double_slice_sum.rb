def max_double_slice_sum(a)
  a[0] = 0
  a[-1] = 0

  max_l = []
  max_ending = 0
  a.each do |v|
    max_ending = [0, max_ending + v].max
    max_l << max_ending
  end

  max_r = []
  max_ending = 0
  a.reverse.each do |v|
    max_ending = [0, max_ending + v].max
    max_r << max_ending
  end
  max_r.reverse!

  max_double_slice = 0
  (1..a.length-2).each do |i|
    max_double_slice = [max_double_slice, max_l[i - 1] + max_r[i + 1]].max
  end

  max_double_slice
end

require 'minitest/autorun'

class Tests < MiniTest::Test
  def test_example_input
    assert_equal 17, max_double_slice_sum([3, 2, 6, -1, 4, 5, -1, 2])
  end
end
