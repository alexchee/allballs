require "allballs/version"
require "time"

module Allballs
  ALLBALLS_TIME = Time.at(0)
  ALLBALLS_TIME.freeze

  module Time
    def allballs
      return ALLBALLS_TIME;
    end
  end
end

class Time
  extend Allballs::Time
end
