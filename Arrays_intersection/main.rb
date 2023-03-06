# frozen_string_literal: true

# Case
module ArraysIntersection
  def self.intersection(first, second)
    res = []
    first.each { |el| res << el if second.include?(el) }
    res
  end
end
