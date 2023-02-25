# frozen_string_literal: true

module MyNumber
  def self.reverse_int(num)
    num.negative? ? num.abs.to_s.reverse.to_i * -1 : num.abs.to_s.reverse.to_i
  end
end
