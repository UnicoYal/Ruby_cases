# frozen_string_literal: true

# Case
module BetweenMod
  def self.valid_date?(date_string)
    date_string.split('-').map(&:to_i)[0].between?(1,31) && date_string.split('-').map(&:to_i)[1].between?(1,12)
  end
end
# END
