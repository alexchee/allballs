require "test_helper"
require "allballs/time"

class AllballsTimeTest < Minitest::Test
  def test_adds_allballs_to_Time
    assert(Time.allballs.is_a?(::Time), "Failed, allballs is not a Time object: #{Time.allballs.class}")
  end

  def test_acts_like_time
    one_minute_in_secs = 60_000_000
    expected_time = Time.at(0) + one_minute_in_secs
    advanced_time = Time.allballs + one_minute_in_secs
    assert(advanced_time == expected_time, "Failed advancing allballs by 1 minute: expected #{expected_time}, got #{advanced_time}")
  end

  def test_equals_epoch
    assert(Time.allballs == Time.at(0), "#{Time.allballs} != #{::Time.at(0)}")
  end
end
