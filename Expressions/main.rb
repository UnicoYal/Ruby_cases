# frozen_string_literal: true

# Case
module Invert
  def self.invert_case(some_string)
    res = ''
    some_string.each_char do |c|
      new_char = c == c.upcase ? c.downcase : c.upcase
      res = "#{res}#{new_char}"
    end
    res
  end
end
