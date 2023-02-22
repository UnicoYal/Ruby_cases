# frozen_string_literal: true

module Iterator

  def average first, last
    sum = 0.0
    first.upto(last) {|el| sum += el}
    sum/(last-first+1)
  end

end 