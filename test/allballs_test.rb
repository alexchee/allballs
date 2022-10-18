require "test_helper"

class AllballsTest < Minitest::Test
  include Allballs

  def test_that_it_has_a_version_number
    refute_nil ::Allballs::VERSION
  end

  def test_acts_like_numeric_zero
    addition = allballs + 5
    assert(addition == 5, "Failed adding integer to allballs")
  end

  def test_equals_zero
    assert(allballs == 0, "Does not return 0")
  end
end
