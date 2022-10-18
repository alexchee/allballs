require "test_helper"
require "allballs/integer"

class AllballsIntegerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Allballs::VERSION
  end

  def test_acts_like_numeric_zero
    addition = allballs + 5
    assert(addition == 5, "Failed adding integer to allballs: #{addition} != 5")
  end

  def test_equals_zero
    assert(allballs == 0, "Failed, #{allballs} != 0")
  end
end
